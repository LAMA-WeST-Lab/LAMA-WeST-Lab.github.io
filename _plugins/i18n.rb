require 'liquid'

module Jekyll
  # translated files live in a folder named after their language, mirroring
  # the original, e.g. fr/team/index.md or _news/fr/2026-01-01-some-news.md.
  # give each one the language and the url of its original so that
  # jekyll-polyglot serves it in place of the original on the translated site.
  module I18n
    # front matter fields that belong to the file itself
    # (last_modified_at is set by jekyll-last-modified-at from the file's own git history)
    OWN = ["lang", "permalink", "slug", "ext", "excerpt", "last_modified_at"]

    # language of translated file, from the folder it is in
    def self.lang(site, doc)
      langs = site.config["languages"].to_a - [site.config["default_lang"]]
      segments = doc.relative_path.split("/")[0...-1]
      return langs.find{|lang| segments.include?(lang)}
    end

    # front matter fields written in the file, not derived by jekyll
    def self.written(doc)
      match = File.read(doc.path, encoding: "utf-8").match(/\A---\s*\n(.*?)\n?^---\s*$/m)
      data = match ? SafeYAML.load(match[1]) : nil
      return data.is_a?(Hash) ? data.keys : []
    end

    def self.localize(site, doc, originals)
      lang = lang(site, doc)
      if not lang
        return
      end

      # fields not written in the translation come from the original
      path = doc.relative_path.split("/")
      path.delete_at(path.index(lang))
      original = originals[path.join("/")]
      if original
        written = written(doc)
        original.data.each do |key, value|
          if not written.include?(key) and not OWN.include?(key)
            doc.data[key] = value
          end
        end
      end

      doc.data["lang"] ||= lang
      if doc.data["permalink"].to_s.empty?
        doc.data["permalink"] = doc.url.sub("/#{lang}/", "/")
        # url was computed from the file path, recompute from permalink
        doc.instance_variable_set(:@url, nil)
      end
    end
  end

  # run before jekyll-polyglot pairs translations with their originals
  Jekyll::Hooks.register(:site, :post_read, priority: :high) do |site|
    docs = site.collections.values.flat_map(&:docs) + site.pages
    originals = docs.map{|doc| [doc.relative_path, doc]}.to_h
    docs.each{|doc| I18n.localize(site, doc, originals)}
  end

  module I18nFilters
    # format date in language of site, using _data/strings.yaml
    def localized_date(date)
      date = Liquid::Utils.to_date(date)
      if not date
        return nil
      end
      strings = @context.registers[:site].data["strings"] || {}
      format = strings["date_format"] || "%B %d, %Y"
      months = strings["months"]
      if months.is_a?(Array) and months.length == 12
        format = format.gsub("%B", months[date.month - 1])
      end
      if strings["date_first"] and date.day == 1
        format = format.gsub("%-d", strings["date_first"])
      end
      return date.strftime(format)
    end
  end
end

Liquid::Template.register_filter(Jekyll::I18nFilters)

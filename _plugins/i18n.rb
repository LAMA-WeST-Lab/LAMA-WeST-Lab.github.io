module Jekyll
  # translated files live in a folder named after their language, mirroring
  # the original, e.g. fr/team/index.md or _news/fr/2026-01-01-some-news.md.
  # give each one the language and the url of its original so that
  # jekyll-polyglot serves it in place of the original on the translated site.
  module I18n
    def self.localize(site, doc)
      langs = site.config["languages"].to_a - [site.config["default_lang"]]
      segments = doc.relative_path.split("/")[0...-1]
      lang = langs.find{|lang| segments.include?(lang)}
      if not lang
        return
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
    docs.each{|doc| I18n.localize(site, doc)}
  end
end

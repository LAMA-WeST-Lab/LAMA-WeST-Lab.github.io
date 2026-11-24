"""
lists content that has no french version yet. a french version is a file with
the same name in a "fr" folder next to the original, e.g.
  news/index.md                 ->  fr/news/index.md
  _news/2026-01-01-some-news.md ->  _news/fr/2026-01-01-some-news.md

this is a reminder only, it never fails: missing french versions fall back to
english on the site.
"""

import argparse
import re
from pathlib import Path

lang = "fr"
collections = {"_news": "News", "_seminars": "Seminars", "_members": "Member bios"}

front_matter = re.compile(r"\A---\s*\n.*?^---\s*$", re.DOTALL | re.MULTILINE)


def read(path):
    return path.read_text(encoding="utf-8").replace("\r\n", "\n")


def body(path):
    """text of file after front matter, or None if file has no front matter"""
    text = read(path)
    match = front_matter.match(text)
    return text[match.end():].strip() if match else None


def pages(root):
    """top level pages of the site, e.g. index.md, team/index.md"""
    found = [root / "index.md", root / "404.md"]
    for folder in sorted(root.iterdir()):
        if folder.is_dir() and folder.name[0] not in "._" and folder.name != lang:
            found.append(folder / "index.md")
    return [page for page in found if page.is_file() and body(page) is not None]


def missing(root):
    """original files with no french version, grouped by section"""
    groups = {}

    def check(group, original, translation):
        if not translation.is_file():
            groups.setdefault(group, []).append(original.relative_to(root).as_posix())

    for page in pages(root):
        check("Pages", page, root / lang / page.relative_to(root))

    for folder, group in collections.items():
        for file in sorted((root / folder).glob("*.md")):
            text = body(file)
            # nothing to translate, e.g. member with no bio
            if not text:
                continue
            check(group, file, file.parent / lang / file.name)

    return groups


def report(groups, heading, note):
    count = sum(len(files) for files in groups.values())
    if not count:
        return ""
    lines = [f"### {heading}", "", note, ""]
    for group, files in groups.items():
        lines += [f"**{group}** ({len(files)})", ""]
        lines += [f"- `{file}`" for file in files]
        lines += [""]
    return "\n".join(lines)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", default=".", help="folder of the site")
    parser.add_argument("--changed", help="file listing changed paths, one per line")
    parser.add_argument("--summary", help="write list of everything missing here")
    parser.add_argument("--comment", help="write list limited to changed paths here")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    groups = missing(root)
    note = (
        "These have no French version yet. This is only a reminder: the French "
        "site shows the English version until one is added. To add one, copy "
        f"the file under the same name into a `{lang}` folder and translate it, "
        f"e.g. `_news/{lang}/2026-01-01-some-news.md` or `{lang}/team/index.md`."
    )

    summary = report(groups, "Missing French versions", note)
    summary = summary or "### Missing French versions\n\nNone, everything has a French version.\n"
    print(summary)
    if args.summary:
        Path(args.summary).write_text(summary, encoding="utf-8")

    if args.comment:
        changed = set()
        if args.changed:
            changed = set(read(Path(args.changed)).split("\n"))
        groups = {
            group: [file for file in files if file in changed]
            for group, files in groups.items()
        }
        groups = {group: files for group, files in groups.items() if files}
        comment = report(groups, "French versions to add (optional)", note)
        Path(args.comment).write_text(comment, encoding="utf-8")

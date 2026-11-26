"""Render every template with every theme, without writing anything."""

import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "src"))

import config  # noqa: E402
from deploy import get_source_files  # noqa: E402
from template import build_context, render_template  # noqa: E402


class RenderTest(unittest.TestCase):
    def test_every_theme_renders_every_template(self):
        global_config = config.load_config()
        required, apps = config.load_apps()
        themes = config.list_themes()
        self.assertTrue(themes, "no themes found")
        for theme in themes:
            data = config.load_theme(theme, global_config)
            missing = [k for k in required if k not in data["config"]]
            self.assertEqual(missing, [], f"{theme}: missing config")
            context = build_context(data)
            for app, app_config in apps.items():
                files = get_source_files(app_config["template"], app_config.get("variant"), app_config.get("files"))
                for rel, src in files.items():
                    with self.subTest(theme=theme, app=app, file=rel):
                        render_template(src, context)


if __name__ == "__main__":
    unittest.main()

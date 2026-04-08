resource "render_static_site" "main" {
  name          = "notch"
  repo_url      = "https://github.com/bashar-515/notch-mirror"
  build_command = "pnpm run build"

  branch         = "main"
  publish_path   = "dist"

  build_filter = {
    paths = [
      "src/**",
      "public/**",
      "astro.config.mjs",
      "package.json",
      "pnpm-lock.yaml",
      "tsconfig.json",
    ]
  }
}

# GitHub Pages Setup

This repo can stay fully separate from your main GitHub Pages repo and still be published as a subpath on the same Pages domain, as long as both repos are under the same GitHub user or organization.

## Required setup

1. Keep this repo's `index.html` at the repo root.
2. Keep `.nojekyll` in the repo root.
3. In this repo's GitHub settings, enable Pages for the default branch and `/ (root)`.
4. Do **not** set a custom domain in this repo.

## Expected URL

If your main Pages domain is coming from a user or organization site custom domain, this project repo should publish at:

`https://<your-domain>/<this-repo-name>/`

Example:

- Main site custom domain: `https://example.com/`
- This repo name: `jobapp`
- Result: `https://example.com/jobapp/`

## Important limitation

This only works cleanly when:

- the main Pages site and this repo belong to the same GitHub account or organization
- the custom domain is configured on the user/org Pages site, not on this repo

If you set a custom domain on this repo itself, it will no longer behave like a shared subpath under the main Pages domain.

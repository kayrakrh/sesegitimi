#!/bin/bash
D="$(cd "$(dirname "$0")" && pwd)"
for b in google-chrome chromium chromium-browser microsoft-edge; do
 if command -v $b >/dev/null 2>&1; then exec $b --app="file://$D/index.html"; fi
done
xdg-open "$D/index.html"

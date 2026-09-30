#!/bin/bash
D="$(cd "$(dirname "$0")" && pwd)"
if [ -d "/Applications/Google Chrome.app" ]; then open -na "Google Chrome" --args --app="file://$D/index.html"
elif [ -d "/Applications/Microsoft Edge.app" ]; then open -na "Microsoft Edge" --args --app="file://$D/index.html"
else open "$D/index.html"; fi

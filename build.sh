#!/usr/bin/env bash
# 用法：YYN_PASSWORD='密碼' ./build.sh
# 把 src/index.html 加密成 dist/index.html（只有 dist 會被 Netlify 發布）
set -euo pipefail
: "${YYN_PASSWORD:?請先設定 YYN_PASSWORD}"
cd "$(dirname "$0")"
npx --yes staticrypt@3.5.4 src/index.html -p "$YYN_PASSWORD" -d dist --short --remember 30 \
  --template-title "英語腦選課" \
  --template-instructions "請輸入英語腦提供的共用密碼" \
  --template-button "進入" \
  --template-placeholder "密碼" \
  --template-remember "這台裝置 30 天內不用再輸入" \
  --template-error "密碼不對，請再試一次" \
  --template-color-primary "#B23A2B" \
  --template-color-secondary "#F7F4EE"
echo "已輸出 dist/index.html"

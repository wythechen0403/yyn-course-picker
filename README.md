# 英語腦選課網頁

英語腦教練與學生使用的選課網頁：確認需求、瀏覽課程、勾選課程後產生「課程安排卡」或「選課意願卡」。

- `src/index.html`：原始網頁（未加密，只存在私人 repo）
- `dist/index.html`：加密後的網頁，Netlify 只發布這個資料夾
- `build.sh`：用共用密碼把 src 加密輸出到 dist

更新流程：改 `src/` → `YYN_PASSWORD='…' ./build.sh` → commit & push → Netlify 自動上線。
教材本體放在公司 Google Drive，網頁只用 Drive 檔案 ID 連結。

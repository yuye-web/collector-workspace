# 收藏家工作台

为一位中国艺术品收藏家打造的桌面级工作台。

- 灵感中心：晨间策展名言 · 一日一展
- 博物馆巡礼：1:110 真实世界地图（Natural Earth）+ 智能聚合点击
- 藏品检索 / 拍卖日程 / 展览信息：本地 JSON + 离线缓存
- 离线优先：单文件 HTML，零外部依赖，断网可用

## 访问

- **永久主地址（GitHub Pages）**：https://yuye-web.github.io/collector-workspace/
- **备用地址（EdgeOne 加速，token 会过期）**：https://collector-workspace-bprgpa7w.edgeone.cool/
- **源文件**：`index.html`（单文件部署，全部 CSS/JS/数据内联）
- **数据源**：`data/` 目录下由 `build.py` 注入到 `index.html`

## 一次性发布到 GitHub

仓库 `yuye-web/collector-workspace` **首次**需在 GitHub 网页手动创建。完成后双击 `发布到GitHub.bat`，脚本会引导你：
1. 在浏览器打开 GitHub 新建仓库页（已预填所有字段）
2. 本地 `git push -u origin main` 推送 3 个 commit
3. 在 Settings → Pages 选 main / root，等待 1~2 分钟

之后每次更新只需：
```bash
git add index.html
git commit -m "update index.html"
git push origin main
```

## 本地刷新数据

```bash
python data/refresh_exh.py
python build.py
```

## 部署

```bash
git add index.html
git commit -m "update index.html"
git push origin main
# GitHub Pages 自动更新（约 1~2 分钟）
```

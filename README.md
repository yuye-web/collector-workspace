# 收藏家工作台

为一位中国艺术品收藏家打造的桌面级工作台。

- 灵感中心：晨间策展名言 · 一日一展
- 博物馆巡礼：1:110 真实世界地图（Natural Earth）+ 智能聚合点击
- 藏品检索 / 拍卖日程 / 展览信息：本地 JSON + 离线缓存
- 离线优先：单文件 HTML，零外部依赖，断网可用

## 访问

- **永久主地址（GitHub Pages）**：https://yuye-web.github.io/collector-workspace/
- **源文件**：`index.html`（单文件部署，全部 CSS/JS/数据内联）
- **数据源**：`data/` 目录下由 `build.py` 注入到 `index.html`

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

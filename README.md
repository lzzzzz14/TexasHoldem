# Texas Hold'em (Local Multiplayer)

本项目是一个基于 SwiftUI 的本地近距离联机德州扑克游戏，
支持：
- iPhone ↔ iPhone
- iPhone ↔ macOS
- 单机对 AI

---

## 📌 开发阶段规划（Milestones）

### M1 · 基础 UI 与导航
- [x] SwiftUI 多平台工程创建（iOS / macOS）
- [x] iPhone 真机运行成功
- [x] 项目结构整理（Views / Core / Services）
- [x] 启动页 RootView（三个模式入口）
- [x] 页面导航（Menu → Lobby / Join / Game）

---

### M2 · 核心数据结构（无 UI）
- [x] Card（花色 / 点数）
- [x] Deck（洗牌 / 发牌）
- [ ] Player（id / 筹码 / 手牌）
- [ ] GamePhase（Preflop / Flop / Turn / River / Showdown）
- [ ] GameState（公共牌 / 底池 / 当前行动者）

---

### M3 · 牌桌 UI（只展示，不含联机）
- [ ] 公共牌区域
- [ ] 玩家手牌区域（自己可见，对手背面）
- [ ] 动作按钮（Fold / Call / Raise，占位）
- [ ] 状态显示（底池 / 当前阶段）

---

### M4 · 游戏状态机（单机可玩）
- [ ] 发牌流程
- [ ] 阶段推进逻辑
- [ ] 玩家动作处理
- [ ] 一手牌完整跑通

---

### M5 · 本地联机（MultipeerConnectivity）
- [ ] Host / Join 连接
- [ ] 房间同步
- [ ] 行动消息传输
- [ ] 私有信息隔离（只发自己的手牌）

---

### M6 · AI 玩家
- [ ] 基础 AI 决策逻辑
- [ ] Host 端 AI 行动注入
- [ ] 单机对 AI 完整可玩

---

## 🔧 技术栈
- Swift / SwiftUI
- MultipeerConnectivity
- iOS / macOS Multiplatform

---

## 📝 开发日志（可选）
- 2026-01-09：项目初始化，iPhone 真机跑通

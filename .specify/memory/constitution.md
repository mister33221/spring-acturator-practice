<!--
同步影響報告:
- 版本變更: N/A -> 1.0.0
- 原則變更: N/A (首次採用)
- 新增章節: 核心原則, Git 規則, 任務開發規則, 治理
- 移除章節: N/A
- 需更新的模板: 無
- 後續 TODO: RATIFICATION_DATE
-->
# Spring Actuator 練習專案憲章

## 核心原則

### I. 後端開發規則 (不可協商)
打造精簡的 Spring Boot 後端以學習 Actuator；範圍要小且可觀測。規則如下:
- 明確暴露 Actuator 端點，不依賴預設值。
- 使用 Profile 與外部化設定，不可硬編碼憑證。
- 加入有意義的 health/info 資訊以展示 Actuator 用法。
- Controller 保持精簡，邏輯放在可測試的小型 Service。
- 針對關鍵流程與錯誤記錄結構化且可行動的日誌。

### II. Git 規則 (不可協商)
Git 歷史必須可讀且安全可審。規則如下:
- 一個分支只做一個功能或修復；分支名稱使用 `###-short-topic`。
- Commit 訊息遵循 Conventional Commits (例如 `feat: add health info`)。
- Commit 小而聚焦，不混合重構與功能。
- 只有在 CI/建置通過時才可 rebase 或 merge；主分支不得壞掉。
- PR/合併需附上簡短摘要與測試說明。

### III. 任務開發規則 (不可協商)
工作以清楚且可測試的任務追蹤。規則如下:
- 將工作拆成使用者可見成果，每項皆可獨立驗證。
- 每個任務定義完成條件: 行為、測試(若有)、文件更新。
- 任務大小需能在 1-2 小時內完成。
- 開始實作前明確標註相依性。
- 執行過程更新狀態，不可默默進行。

## Git 規則

- 分支名稱: `###-short-topic` (例如 `001-actuator-health`)。
- Commit 格式: `type(scope): message`，type 為 `feat`、`fix`、`docs`、
  `refactor`、`test`、`chore`。
- 僅在提升清晰度時才 squash；避免丟失有意義的步驟。
- 保護 main: 禁止直接推送，需透過 PR 並完成審查後合併。
- 為學習里程碑打 tag (例如 `v0.1.0` 代表 Actuator 基礎完成)。

## 任務開發規則

- 每個任務包含: 目標、要變更的檔案、成功檢查方式。
- 在任務描述中記錄決策與假設。
- 需要測試時，優先在實作前建立失敗測試。
- 依相依性排序任務；被阻擋的任務不得先做。
- 執行相關檢查後才可關閉任務。

## 治理

此憲章為專案最高層級規範。變更需符合:
- 以書面說明變更內容與理由。
- 依語意化版本( MAJOR/MINOR/PATCH )調整版本。
- 檢視 plan/spec/task 模板是否一致。
- 確認進行中的任務符合更新後規則。

**Version**: 1.0.0 | **Ratified**: TODO(RATIFICATION_DATE): 未知採用日期 | **Last Amended**: 2026-01-08

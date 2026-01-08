# Phase 0 Research

## 決策與結論

### 決策 1: 專案語言與框架
- Decision: 使用 Java 17 + Spring Boot 3.x + Spring Boot Actuator
- Rationale: 穩定且符合 Actuator 最新版本生態；教學資源與範例充足
- Alternatives considered: Java 21, Kotlin + Spring Boot

### 決策 2: 建置工具
- Decision: 使用 Maven (含 wrapper)
- Rationale: 專案簡單、設定清楚，學習成本低
- Alternatives considered: Gradle

### 決策 3: 可觀測端點清單
- Decision: 固定端點清單：`health`、`info`、`metrics`、`metrics/{name}`
- Rationale: 覆蓋狀態、摘要資訊、度量與細節查詢的學習需求
- Alternatives considered: 全端點開放、僅 health

### 決策 4: 異常情境示範方式
- Decision: 提供固定且可重現的異常情境，透過簡單旗標影響健康狀態
- Rationale: 易於理解與驗證，避免不必要的複雜度
- Alternatives considered: 讓學習者自行輸入錯誤內容

### 決策 5: 設定變更觀察方式
- Decision: 以修改設定檔後重啟觀察差異
- Rationale: 可重現且便於教學說明
- Alternatives considered: 動態調整即時生效

### 決策 6: 日誌輸出格式
- Decision: 使用結構化日誌 (key=value) 記錄關鍵流程
- Rationale: 易讀且不依賴外部工具
- Alternatives considered: 純文字日誌、JSON 日誌

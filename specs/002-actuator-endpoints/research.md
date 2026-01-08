# Phase 0 Research

## 決策與結論

### 決策 1: 指標輸出格式
- Decision: 加入 Prometheus 格式端點
- Rationale: 符合常見監控工具習慣，與指標教學情境一致
- Alternatives considered: 僅使用 /metrics

### 決策 2: HTTP 追蹤機制
- Decision: 使用 Actuator 的 HTTP 追蹤機制並保留完整內容
- Rationale: 便於除錯與觀察 request/response
- Alternatives considered: 僅保留摘要

### 決策 3: 端點曝露範圍
- Decision: 僅曝露學習清單端點
- Rationale: 降低誤曝露風險並聚焦學習內容
- Alternatives considered: 全部端點開放

### 決策 4: env/configprops 顯示策略
- Decision: 完整顯示內容且不遮罩敏感值
- Rationale: 以學習與完整理解為主
- Alternatives considered: 遮罩敏感值

### 決策 5: Dump 端點範圍
- Decision: 僅提供 threaddump，不提供 heapdump
- Rationale: 避免大型檔案與過高記憶體需求
- Alternatives considered: 同時提供 heapdump

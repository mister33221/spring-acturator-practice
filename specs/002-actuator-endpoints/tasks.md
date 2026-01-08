---

description: "Task list template for feature implementation"
---

# Tasks: Actuator 常用端點學習擴充

**Input**: Design documents from `/specs/002-actuator-endpoints/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/, quickstart.md

**Tests**: 規格未要求測試，因此不建立測試任務。

**Organization**: 任務依使用者故事分組，以確保可獨立實作與驗證。

## Format: `[ID] [P?] [Story] Description`

- **[P]**: 可平行執行 (不同檔案、無相依)
- **[Story]**: 對應的使用者故事 (US1, US2, US3)
- 每個任務描述包含明確檔案路徑

## Path Conventions

- **Single project**: `src/`, `tests/` at repository root
- 本專案使用標準 Spring Boot 結構

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: 擴充既有專案的基礎設定

- [x] T001 更新 Actuator 與 Prometheus 依賴 (pom.xml)
- [x] T002 更新共用設定檔與 Profile 設定 (src/main/resources/application.yml, src/main/resources/application-dev.yml)
- [x] T003 補齊端點曝露清單設定 (src/main/resources/application.yml)

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: 共用基礎，確保端點可用與說明一致

- [x] T004 設定 Readiness/Liveness 與健康細節顯示 (src/main/resources/application.yml)
- [x] T005 設定 env/configprops 顯示策略與不遮罩 (src/main/resources/application.yml)
- [x] T006 設定 HTTP 追蹤機制啟用 (src/main/resources/application.yml)
- [x] T007 補齊學習端點清單與說明 (README.md, specs/002-actuator-endpoints/quickstart.md)

---

## Phase 3: User Story 1 - 健康檢查與可用性理解 (Priority: P1) ✅ MVP

**Goal**: 學習者理解健康狀態與 Readiness/Liveness

**Independent Test**: 呼叫 `/actuator/health`、`/actuator/health/liveness`、`/actuator/health/readiness`

### Implementation for User Story 1

- [x] T008 [US1] 建立健康端點說明與示例 (README.md)
- [x] T009 [US1] 補充依賴元件影響可用性說明 (README.md)

---

## Phase 4: User Story 2 - 應用資訊與指標監控 (Priority: P2)

**Goal**: 學習者理解資訊摘要與指標查詢

**Independent Test**: 呼叫 `/actuator/info`、`/actuator/metrics`、`/actuator/metrics/{name}`、`/actuator/prometheus`

### Implementation for User Story 2

- [x] T010 [US2] 建立 info/githash/build 資訊說明 (README.md)
- [x] T011 [US2] 補充 metrics 與 prometheus 使用說明 (README.md)

---

## Phase 5: User Story 3 - 診斷、日誌與組態檢視 (Priority: P3)

**Goal**: 學習者可進行診斷與調整日誌

**Independent Test**: 呼叫 `/actuator/loggers`、`/actuator/mappings`、`/actuator/beans`、`/actuator/conditions`、`/actuator/env`、`/actuator/configprops`、`/actuator/threaddump`、`/actuator/httpexchanges`

### Implementation for User Story 3

- [x] T012 [US3] 建立日誌層級調整示例 (README.md)
- [x] T013 [US3] 補充診斷端點用途與注意事項 (README.md)
- [x] T014 [US3] 補充組態與路由檢視說明 (README.md)

---

## Phase 6: Polish & Cross-Cutting Concerns

**Purpose**: 文件整理與學習流程優化

- [x] T015 [P] 統整端點列表與教學流程 (README.md)
- [x] T016 [P] 更新快速開始與設定說明 (specs/002-actuator-endpoints/quickstart.md)

---

## Dependencies & Execution Order

### Phase Dependencies

- **Setup (Phase 1)**: 無相依，可立即開始
- **Foundational (Phase 2)**: 依賴 Setup 完成，阻擋所有使用者故事
- **User Stories (Phase 3+)**: 依賴 Foundational 完成後可並行
- **Polish (Phase 6)**: 依賴使用者故事完成

### User Story Dependencies

- **User Story 1 (P1)**: 依賴 Phase 2
- **User Story 2 (P2)**: 依賴 Phase 2，可與 US1 平行
- **User Story 3 (P3)**: 依賴 Phase 2，可與 US1/US2 平行

### Within Each User Story

- 說明文件完成後才能驗證學習流程
- 組態設定優先於端點說明

### Parallel Opportunities

- Phase 6 任務可平行進行

---

## Parallel Example: User Story 2

```bash
Task: "建立 info/githash/build 資訊說明 (README.md)"
Task: "補充 metrics 與 prometheus 使用說明 (README.md)"
```

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1. 完成 Phase 1: Setup
2. 完成 Phase 2: Foundational
3. 完成 Phase 3: User Story 1
4. **STOP and VALIDATE**: 驗證健康端點

### Incremental Delivery

1. 完成 Setup + Foundational
2. 完成 User Story 1 → 驗證
3. 完成 User Story 2 → 驗證
4. 完成 User Story 3 → 驗證
5. 完成 Polish

### Parallel Team Strategy

- 先完成 Setup + Foundational
- 之後 US1/US2/US3 可分開進行

---

description: "Task list template for feature implementation"
---

# Tasks: 可觀測性學習專案

**Input**: Design documents from `/specs/001-actuator-learning/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

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

**Purpose**: 初始化專案與基本結構

- [ ] T001 初始化 Spring Boot 專案結構與 Maven Wrapper (README.md, pom.xml, mvnw, mvnw.cmd)
- [ ] T002 建立主程式入口與套件結構 (src/main/java/com/example/actuatorlearning/ActuatorLearningApplication.java)
- [ ] T003 建立基本設定檔 (src/main/resources/application.yml)

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: 所有使用者故事之前必須完成的共用基礎

- [ ] T004 加入 Actuator 依賴與基本設定 (pom.xml, src/main/resources/application.yml)
- [ ] T005 設定可觀測端點清單與顯示細節 (src/main/resources/application.yml)
- [ ] T006 建立 info 資訊設定 (src/main/resources/application.yml)
- [ ] T007 建立結構化日誌設定 (src/main/resources/application.yml)

---

## Phase 3: User Story 1 - 查看基本狀態與資訊 (Priority: P1) ✅ MVP

**Goal**: 學習者能查看基本健康狀態與資訊摘要

**Independent Test**: 呼叫 `/actuator/health` 與 `/actuator/info` 取得可讀結果

### Implementation for User Story 1

- [ ] T008 [US1] 建立 info 資訊的組態與說明文件 (README.md)
- [ ] T009 [US1] 建立健康狀態延伸說明 (src/main/resources/application.yml)

---

## Phase 4: User Story 2 - 探索度量與設定影響 (Priority: P2)

**Goal**: 學習者能查看度量資料並觀察設定變更效果

**Independent Test**: 呼叫 `/actuator/metrics` 與 `/actuator/metrics/{name}`，修改設定後重啟觀察差異

### Implementation for User Story 2

- [ ] T010 [US2] 建立度量端點使用說明與範例 (README.md)
- [ ] T011 [US2] 補充可修改設定與效果說明 (README.md, src/main/resources/application.yml)

---

## Phase 5: User Story 3 - 模擬異常並觀察回應 (Priority: P3)

**Goal**: 學習者能觸發預設異常情境並觀察健康狀態變化

**Independent Test**: 切換 `demo.failure.enabled` 後重啟，查看 `/actuator/health` 變化

### Implementation for User Story 3

- [ ] T012 [US3] 建立異常旗標設定 (src/main/resources/application.yml)
- [ ] T013 [US3] 加入自訂 Health Indicator (src/main/java/com/example/actuatorlearning/health/DemoHealthIndicator.java)

---

## Phase 6: Polish & Cross-Cutting Concerns

**Purpose**: 跨使用者故事的整理與可用性提升

- [ ] T014 [P] 更新快速開始文件 (specs/001-actuator-learning/quickstart.md)
- [ ] T015 [P] 補齊端點清單與說明 (README.md)
- [ ] T016 更新設定範例與學習筆記 (README.md)

---

## Dependencies & Execution Order

### Phase Dependencies

- **Setup (Phase 1)**: 無相依，可立即開始
- **Foundational (Phase 2)**: 依賴 Setup 完成，阻擋所有使用者故事
- **User Stories (Phase 3+)**: 依賴 Foundational 完成後可並行
- **Polish (Phase 6)**: 依賴使用者故事完成

### User Story Dependencies

- **User Story 1 (P1)**: 無依賴，可於 Phase 2 後立即開始
- **User Story 2 (P2)**: 依賴 Phase 2，與 US1 可平行
- **User Story 3 (P3)**: 依賴 Phase 2，與 US1/US2 可平行

### Within Each User Story

- 設定檔調整優先於對應功能
- 說明文件完成後才能驗證學習流程

### Parallel Opportunities

- Phase 1 任務可平行進行 (不同檔案)
- Phase 6 任務可平行進行

---

## Parallel Example: User Story 1

```bash
Task: "建立 info 資訊的組態與說明文件 (README.md)"
Task: "建立健康狀態延伸說明 (src/main/resources/application.yml)"
```

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1. 完成 Phase 1: Setup
2. 完成 Phase 2: Foundational
3. 完成 Phase 3: User Story 1
4. **STOP and VALIDATE**: 驗證 `/actuator/health` 與 `/actuator/info`

### Incremental Delivery

1. 完成 Setup + Foundational
2. 完成 User Story 1 → 驗證
3. 完成 User Story 2 → 驗證
4. 完成 User Story 3 → 驗證
5. 完成 Polish

### Parallel Team Strategy

- 同步完成 Setup + Foundational
- 之後 US1/US2/US3 可分開進行

# Implementation Plan: Actuator 常用端點學習擴充

**Branch**: `002-actuator-endpoints` | **Date**: 2026-01-08 | **Spec**: specs/002-actuator-endpoints/spec.md
**Input**: Feature specification from `/specs/002-actuator-endpoints/spec.md`

## Summary

在既有學習專案中擴充常用 Actuator 端點，涵蓋健康檢查、應用資訊、指標、
日誌調整、診斷、HTTP 追蹤、組態檢視與曝露控制，並提供完整示範與說明。

## Technical Context

**Language/Version**: Java 17
**Primary Dependencies**: Spring Boot 3.x, Spring Boot Actuator, Micrometer Prometheus Registry
**Storage**: N/A (無資料庫)
**Testing**: JUnit 5, Spring Boot Test
**Target Platform**: 本機開發環境
**Project Type**: single
**Performance Goals**: 無
**Constraints**: 僅曝露學習清單端點、env/configprops 完整顯示、不遮罩敏感值、
                 不提供 heapdump、HTTP 追蹤保留完整內容
**Scale/Scope**: 單一學習者、單機執行

## Constitution Check

*GATE: 必須通過後才能進入 Phase 0 研究，Phase 1 設計後需重檢。*

- 後端範圍精簡且可觀測: 通過
- 明確暴露 Actuator 端點: 通過
- 使用 Profile 與外部化設定: 通過
- 提供有意義的 health/info 資訊: 通過
- Controller 精簡、邏輯集中於 Service: 通過
- 記錄結構化日誌: 通過
- 任務可獨立驗證與可完成性: 通過

**Phase 1 設計後重檢**: 通過

## Project Structure

### Documentation (this feature)

```text
specs/002-actuator-endpoints/
├── plan.md               # 本文件
├── research.md           # Phase 0 研究結果
├── data-model.md         # Phase 1 資料模型
├── quickstart.md         # Phase 1 快速開始
├── contracts/            # Phase 1 API 合約
└── tasks.md              # Phase 2 任務清單 (由 /speckit.tasks 產生)
```

### Source Code (repository root)

```text
src/
├── main/
│   ├── java/
│   │   └── com/example/actuatorlearning/
│   └── resources/
│       ├── application.yml
│       └── application-dev.yml
└── test/
    └── java/
        └── com/example/actuatorlearning/
```

**Structure Decision**: 單一 Spring Boot 專案，採標準 `src/main` 與 `src/test` 結構。

## Complexity Tracking

無違反憲章規則，無需額外複雜度說明。

# Phase 1 Quickstart

## 目的

提供學習者快速啟動並觀察 Actuator 效果的最小步驟。

## 前置需求

- JDK 17
- Maven (或使用專案內的 Maven Wrapper)

## 啟動方式

```bash
./mvnw spring-boot:run
```

## 可觀測端點

- `GET /actuator/health`：檢視服務可用狀態
- `GET /actuator/info`：檢視應用資訊摘要
- `GET /actuator/metrics`：檢視可用度量清單
- `GET /actuator/metrics/{name}`：檢視指定度量細節

## 設定變更說明 (需重啟)

> 修改設定後需重啟應用，並觀察端點回應差異。

- `management.endpoints.web.exposure.include`
  - 可修改內容: `health,info,metrics`
  - 效果: 決定哪些端點會被暴露

- `management.endpoint.health.show-details`
  - 可修改內容: `always` 或 `never`
  - 效果: 是否顯示健康細節

- `info.app.name` / `info.app.version`
  - 可修改內容: 任意文字
  - 效果: 會出現在 `/actuator/info`

- `demo.failure.enabled`
  - 可修改內容: `true` 或 `false`
  - 效果: 控制預設異常情境是否啟用

## 預設異常情境

- 當 `demo.failure.enabled=true` 時，健康狀態會反映異常
- 當 `demo.failure.enabled=false` 時，健康狀態恢復正常

## 驗證方式

1. 啟動應用後依序打開端點，確認回應存在
2. 修改設定後重啟，重新觀察端點回應差異

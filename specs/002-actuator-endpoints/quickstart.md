# Phase 1 Quickstart

## 目的

提供學習者快速啟動並觀察常用 Actuator 端點效果的最小步驟。

## 前置需求

- JDK 17
- Maven (或使用專案內的 Maven Wrapper)

## 啟動方式

```bash
./mvnw spring-boot:run
```

## 學習端點清單

- `GET /actuator/health`
- `GET /actuator/health/liveness`
- `GET /actuator/health/readiness`
- `GET /actuator/info`
- `GET /actuator/metrics`
- `GET /actuator/metrics/{name}`
- `GET /actuator/prometheus`
- `GET /actuator/loggers`
- `GET /actuator/loggers/{name}`
- `GET /actuator/mappings`
- `GET /actuator/beans`
- `GET /actuator/conditions`
- `GET /actuator/env`
- `GET /actuator/configprops`
- `GET /actuator/threaddump`
- `GET /actuator/httpexchanges`

## 設定變更說明

> 修改設定後需重啟應用，並觀察端點回應差異。

- `management.endpoints.web.exposure.include`
  - 可修改內容: 依學習清單調整
  - 效果: 決定端點曝露範圍

- `management.endpoint.health.probes.enabled`
  - 可修改內容: `true` 或 `false`
  - 效果: 啟用 Readiness/Liveness

- `management.endpoint.env.show-values`
  - 可修改內容: `always`
  - 效果: env/configprops 完整顯示

## HTTP 追蹤說明

- `GET /actuator/httpexchanges` 會顯示完整 request/response
- 以本機測試為主，請避免輸入敏感資訊

## 安全提醒

- env/configprops 目前設定為完整顯示且不遮罩敏感值
- 僅在本機或受控環境使用

## 驗證方式

1. 啟動應用並逐一打開端點，確認回應內容
2. 修改設定後重啟，重新觀察端點差異

# Spring Actuator 常用端點學習

此專案用來練習與理解 Spring Actuator 常用端點的用途與效果。

## 目標

- 理解健康檢查與 Readiness/Liveness 的差異
- 了解應用資訊與指標監控的用法
- 熟悉診斷、日誌與組態檢視端點
- 明確掌握端點曝露控制與安全注意事項

## 前置需求

- JDK 17
- Maven (或使用專案內的 Maven Wrapper)

## 啟動方式

```bash
./mvnw spring-boot:run
```

## 端點曝露清單

本專案只曝露以下學習用端點:

- `/actuator/health`
- `/actuator/health/liveness`
- `/actuator/health/readiness`
- `/actuator/info`
- `/actuator/metrics`
- `/actuator/metrics/{name}`
- `/actuator/prometheus`
- `/actuator/loggers`
- `/actuator/loggers/{name}`
- `/actuator/mappings`
- `/actuator/beans`
- `/actuator/conditions`
- `/actuator/env`
- `/actuator/configprops`
- `/actuator/threaddump`
- `/actuator/httpexchanges`

## 健康檢查與可用性

- `/actuator/health` 代表整體健康狀態
- `/actuator/health/liveness` 代表程式是否還活著
- `/actuator/health/readiness` 代表是否準備好接流量

## 應用資訊

`/actuator/info` 會顯示版本、環境與建置資訊。

- 版本與環境來自 `application.yml` 的 `info.app.*`
- 建置資訊來自 `spring-boot-maven-plugin` 的 `build-info`
- Git 資訊來自 `git-commit-id-plugin` 產生的 `git.properties`

## 指標監控

- `/actuator/metrics` 可查看可用指標清單
- `/actuator/metrics/{name}` 可查看單一指標細節
- `/actuator/prometheus` 提供 Prometheus 格式的指標輸出

## 日誌控制

`/actuator/loggers` 可以在執行中調整 logger level。

範例:

```bash
curl -X POST "http://localhost:8080/actuator/loggers/com.example" \
  -H "Content-Type: application/json" \
  -d '{"configuredLevel":"DEBUG"}'
```

使用完畢後可再改回 `INFO`。

## 診斷與排查

- `/actuator/threaddump`：執行緒狀態
- `/actuator/conditions`：自動設定生效原因
- `/actuator/beans`：容器內 Bean 清單
- `/actuator/mappings`：Controller 路由映射

## 組態與環境檢視

- `/actuator/env`：環境變數與設定來源
- `/actuator/configprops`：`@ConfigurationProperties` 綁定結果

本專案設定為完整顯示且不遮罩敏感值，請勿在真實環境使用。

## HTTP 追蹤

- `/actuator/httpexchanges` 會保留完整 request/response
- 僅用於本機學習與除錯，避免輸入敏感資訊

## 設定檔重點

主要設定在 `src/main/resources/application.yml`:

- `management.endpoints.web.exposure.include` 控制端點曝露
- `management.endpoint.health.probes.enabled` 啟用 Readiness/Liveness
- `management.endpoint.env.show-values` 與 `management.endpoint.configprops.show-values` 控制顯示範圍

## 注意事項

- 本專案為學習用途，不做存取控制
- env/configprops 與 httpexchanges 可能包含敏感資訊
- 僅在本機或受控環境測試

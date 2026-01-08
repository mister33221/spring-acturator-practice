# Phase 1 Data Model

## 資料模型概述

本專案不使用資料庫或持久化儲存，僅使用記憶體狀態與設定檔。

## 概念性資料

- **學習端點清單**
  - 用途: 固定可觀測端點的曝露範圍
  - 內容: health、info、metrics、prometheus、loggers、mappings、beans、conditions、env、configprops、threaddump、httpexchanges

- **HTTP 追蹤紀錄**
  - 用途: 顯示最近的 request/response 詳細內容
  - 範圍: 方法、路徑、狀態碼、Header、Body

## 驗證規則

- 端點清單必須與設定檔一致
- 追蹤紀錄需能完整顯示 request/response

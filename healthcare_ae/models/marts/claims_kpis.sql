{{ config(materialized='table') }}

SELECT
  COUNT(*) AS total_claims,
  SUM(billed_amount) AS total_billed,
  SUM(paid_amount) AS total_paid,
  SUM(billed_amount - paid_amount) AS total_unpaid,
  ROUND(SUM(paid_amount) / NULLIF(SUM(billed_amount), 0), 2) AS payout_ratio
FROM {{ ref('stg_claims') }}
{{ config(materialized='table') }}

SELECT
  COUNT(*) AS total_claims,
  SUM(claim_amount) AS total_billed,
  SUM(paid_amount) AS total_paid,
  SUM(claim_amount - paid_amount) AS total_unpaid,
  ROUND(SUM(paid_amount) / NULLIF(SUM(claim_amount), 0), 2) AS payout_ratio
FROM {{ ref('stg_claims') }}
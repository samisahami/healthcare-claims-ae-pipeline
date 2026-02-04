{{ config(materialized='table') }}

SELECT
  claim_status,
  COUNT(*)               AS claim_count,
  SUM(billed_amount)      AS total_claim_amount,
  SUM(paid_amount)       AS total_paid_amount,
  SUM(billed_amount - paid_amount) AS total_unpaid_amount
FROM {{ ref('stg_claims') }}
GROUP BY claim_status
with base as (

    select
        claim_date,
        claim_status,
        billed_amount,
        allowed_amount,
        paid_amount
    from {{ ref('stg_claims') }}

),

monthly as (

    select
        date_trunc('month', claim_date)::date as month,

        count(*) as claim_count,

        sum(billed_amount) as total_billed,
        sum(allowed_amount) as total_allowed,
        sum(paid_amount) as total_paid,

        -- unpaid = allowed - paid (more realistic than billed - paid)
        sum(allowed_amount - paid_amount) as total_unpaid,

        -- denial metrics
        sum(case when claim_status = 'DENIED' then 1 else 0 end) as denied_claims,
        round(
            (sum(case when claim_status = 'DENIED' then 1 else 0 end)::numeric / nullif(count(*),0)),
            4
        ) as denial_rate

    from base
    group by 1
)

select *
from monthly
order by month

with source as (

    select *
    from {{ raw_claims_relation() }}

),

renamed as (

    select
        claim_id,
        member_id,
        provider_id,

        -- dates
        service_date    as claim_date,

        -- codes
        dx_code         as diagnosis_code,
        proc_code       as procedure_code,

        -- money (canonical)
        billed_amount,
        allowed_amount,
        paid_amount,

        -- status
        claim_status

    from source

)

select *
from renamed

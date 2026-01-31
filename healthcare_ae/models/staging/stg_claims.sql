with source as (

    select *
    from {{ source('raw', 'claims_raw') }}

),

renamed as (

    select
        claim_id,
        member_id,
        provider_id,
        claim_date,
        diagnosis_code,
        procedure_code,
        claim_amount,
        paid_amount,
        claim_status
    from source

)

select * from renamed
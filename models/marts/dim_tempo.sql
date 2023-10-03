with
    stg_data as (
        select *
        from {{ ref('stg_erp__data') }}
    )
       , criar_chave as (
        select
            row_number() over(order by data_inicio) as pk_data
            ,data
            ,ano
            ,mes_num
            ,mes_ano
            ,mes
            ,dia_semana
        from stg_data
    )

select *
from criar_chave     


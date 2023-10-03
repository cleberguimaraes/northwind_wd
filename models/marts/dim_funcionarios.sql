with
    stg_funcionarios as (
        select 
            id_funcionario
            ,nome_funcionario
            ,cargo
            ,endereco
            ,cidade
            ,regiao
            ,pais
        from {{ ref('stg_erp__funcionarios')}}
    )
    , resultado_funcionarios as (
        select 
           row_number() over (order by  id_funcionario) as sk_funcionario
           , *
           from stg_funcionarios
    )
select * from resultado_funcionarios
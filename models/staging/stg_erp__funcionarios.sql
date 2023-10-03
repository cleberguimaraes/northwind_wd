with
    fonte_funcionarios as (
        select 
            cast(employee_id as int) as id_funcionario
            , cast(concat(last_name, ' ', first_name) as string) as nome_funcionario
            , cast(title as string) as cargo
            , cast(address as string) as endereco
            , cast(city as string) as cidade
            , cast(region as string) as regiao
            , cast(country as string) as pais       
        from {{source('erp','employees')}}
    )
select * from fonte_funcionarios
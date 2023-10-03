with fonte_data as (
    select 
       --cast(contador as int) as contador, 
       PARSE_DATE('%d/%m/%Y', SUBSTR(dt_inicio, 1, 10)) as data_inicio,
       PARSE_DATE('%d/%m/%Y', SUBSTR(data, 1, 10)) as data,
       cast(ano as int) as ano,
       cast(mes as int) as mes_num,
      -- cast(dia_mes as int) as dia_mes_num,
     --  cast(semana as int) as semana,
      -- cast(dia_semana as int) as dia_semana_num,
       cast(mes_ano as string) as mes_ano,
     --  cast(mes_dia_desc as string) as mes_dia_desc,
       cast(mes_txt as string) as mes,
       cast(dia_txt as string) as dia_semana
    from `northwind-projeto-dw-400313.dbt_northwind_cleber.data`
)

select * from fonte_data 

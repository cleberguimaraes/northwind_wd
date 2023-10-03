with
    validation as (
        select sum(quantidade) as sum_val
        from {{ ref('fct_vendas') }}
        where data_do_pedido between '1997-01-01' and '1997-12-31'
    )
select * from validation  where sum_val >= 25489  
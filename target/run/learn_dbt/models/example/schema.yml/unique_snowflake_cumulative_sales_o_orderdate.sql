select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    o_orderdate as unique_field,
    count(*) as n_records

from analytics.dbt_nigel.snowflake_cumulative_sales
where o_orderdate is not null
group by o_orderdate
having count(*) > 1



      
    ) dbt_internal_test
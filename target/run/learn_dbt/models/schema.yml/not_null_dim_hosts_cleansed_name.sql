select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select name
from airbnb.dev.dim_hosts_cleansed
where name is null



      
    ) dbt_internal_test
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select sum(c_acctbal) as sum
from analytics.dbt.playing_with_tests
having sum < 100000000
      
    ) dbt_internal_test
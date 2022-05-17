select sum(c_acctbal) as sum
from analytics.dbt.playing_with_tests
having sum < 100000000
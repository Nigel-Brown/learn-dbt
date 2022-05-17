select sum(c_accbal) as sum
from {{ref('playing_with_tests')}}
having sum < 100000000

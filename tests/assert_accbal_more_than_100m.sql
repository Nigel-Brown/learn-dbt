select sum(c_acctbal) as sum
    from {{ref('playing_with_tests')}}
having sum <= 100000000

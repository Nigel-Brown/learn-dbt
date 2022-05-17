

select *
from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."TIME_DIM"
where to_time(concat(T_HOUR::varchar, ':', T_MINUTE::varchar, ':', T_SECOND::varchar)) <= current_time


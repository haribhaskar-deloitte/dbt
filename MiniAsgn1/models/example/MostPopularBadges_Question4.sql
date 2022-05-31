{{ config(materialized='table') }}



select *
from "MINIASGN"."MINISCHEMA"."BADGES" b
ORDER BY b.UserId
LIMIT 10

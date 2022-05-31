{{ config(materialized='table') }}




select u.Id, u.DisplayName, u.Reputation
from "MINIASGN"."MINISCHEMA"."USERS" Users
ORDER BY u.Reputation
LIMIT 10;

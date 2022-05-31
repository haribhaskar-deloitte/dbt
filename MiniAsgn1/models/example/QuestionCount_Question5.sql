{{ config(materialized='table') }}



select u.Id, u.DisplayName, u.Reputation ,count(select p.PostTypeId
from "MINIASGN"."MINISCHEMA"."POSTS" p
where p.PostTypeId=1)
from "MINIASGN"."MINISCHEMA"."USERS" u
where Reputation>75000

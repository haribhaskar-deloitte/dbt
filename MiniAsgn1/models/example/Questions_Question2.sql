{{ config(materialized='table') }}



select p.body
from "MINIASGN"."MINISCHEMA"."POSTS" p
where p.Id = (select u.Id
from "MINIASGN"."MINISCHEMA"."USERS" u
where u.DisplayName="alexandrul") and p.PostTypeId = 1;

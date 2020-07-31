create table leo_log
(device_id integer
,address_id integer
,log_time varchar(8)
,log_date varchar(40)
,state smallint)
;

create table leo_log
(device_id integer
,device_name varchar(50)
,log_time varchar(8)
,device_watt integer)
;


create view v_duration as
select a."device_id",	a."address_id",
	a."START_DATE",	a."START_TIME",	a."END_DATE",	a."END_TIME", a."DURATION_MIN"

,RANK() OVER (partition by a."device_id" , a."address_id" ,a.start_date,a.start_time order by a.duration_min) as rank1
from(
select a."device_id"
,a."address_id"
,a."log_date" start_date
,a."log_time" start_time
,b."log_date" end_date
,b."log_time" end_time
,a."state"
,b."state"
,timestampdiff(4,
						timestamp(b."log_date"||' '||b."log_time")  -
						timestamp(a."log_date"|| ' '||a."log_time")
						) duration_min
from leo_log2 a
left join leo_log2 b
on  a."device_id" = b."device_id"
and a."address_id" = b."address_id"
and b."state"= 0
and b."log_time" > a."log_time"
where a."state" =1
--and a."log_date" = b."log_date"
) a
where duration_min > 0
;

create view v_duration_agg as
select b."device_name"
,a."address_id"
,a."START_DATE"
,a."AGG" agg_min
,a."AGG" * b."device_watt"  agg_watt
from (
select  "device_id","address_id","START_DATE",sum("DURATION_MIN") agg
from v_duration
where "RANK1" = 1
group by "device_id","address_id","START_DATE"
) a
left join leo_dev b
on a."device_id" = b."device_id";
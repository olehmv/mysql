/*left outer join retrive complete data from the left side table and matching data
 on the right side table*/
/* delete from manager where manager.id=4;*/
 select * from employee e left outer join manager m
 on e.manager_id=m.m_id;
 
 
 
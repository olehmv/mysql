/* full outer join retrive complete data from left side table as well as from right side table*/
 delete from manager  where manager.m_id=5;
 delete from employee where employee.e_id=5;

select * from mutex
left outer join employee as e on i=0 
left outer join manager as m  on i=1 or   m.m_id=e.manager_id
left outer join employee as e2 on i=1 and e2.manager_id=m.m_id
/*select * from mutex
left outer join manager as m on i=0 
left outer join employee as e  on i=1 or e.manager_id=m.m_id
left outer join manager as m2 on i=1 and m2.m_id=e.manager_id
; */
/*select * from employee e right join manager m on
m.m_id=e.manager_id
union all
select * from manager m right join employee e on
e.manager_id=m.m_id
;*/
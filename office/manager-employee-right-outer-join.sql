/* right outer join -> retrive complete data from right side table
and matching data from left side table*/
/*delete from manager where manager.id=3;*/

select m.m_id as manager_id, m.m_firstname, m.m_lastname, e.e_id as employee_id, e.e_firstname, e.e_lastname
from manager m right outer join employee e
on m.m_id=e.manager_id;



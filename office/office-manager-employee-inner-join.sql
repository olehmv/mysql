/*retrieve the data only if criteria is satisfied in both tables*/
delete  from employee where  employee.e_id=5;
select m.m_id as manager_id, m.m_firstname, m.m_lastname, e.e_id as employee_id, e.e_firstname, e.e_lastname 
from manager m inner join employee e on  m.m_id=e.manager_id;
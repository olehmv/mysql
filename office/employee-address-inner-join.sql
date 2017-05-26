select e.e_id as employee_id,e.e_firstname,e.e_lastname, a.city, a.street from employee e
inner join address a on e.e_id=a.employee_id;
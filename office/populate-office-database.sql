use office;

SET SQL_SAFE_UPDATES = 0;

/*SET SQL_SAFE_UPDATES = 1;*//*mysql error code 1175*/


insert into manager(m_firstname,m_lastname)values('oleg','melnychuk');
insert into manager(m_firstname,m_lastname)values('ivan','colobok');
insert into manager(m_firstname,m_lastname)values('petro','bobko');
insert into manager(m_firstname,m_lastname)values('boris','hlib');
insert into manager(m_firstname,m_lastname)values('olena','soroka');


insert into employee(e_firstname,e_lastname)values('oksana','vytrykysch');
insert into employee(e_firstname,e_lastname)values('volodymyr','beresa');
insert into employee(e_firstname,e_lastname)values('igor','sokol');
insert into employee(e_firstname,e_lastname)values('olga','vyhor');
insert into employee(e_firstname,e_lastname)values('svitlana','makohin');

update employee set manager_id=(select manager.m_id from manager where manager.m_firstname='oleg') where employee.e_firstname='oksana';
update employee set manager_id=(select manager.m_id from manager where manager.m_firstname='ivan') where employee.e_firstname='svitlana';
update employee set manager_id=(select manager.m_id from manager where manager.m_firstname='petro') where employee.e_firstname='igor';
update employee set manager_id=(select manager.m_id from manager where manager.m_firstname='boris') where employee.e_firstname='olga';
update employee set manager_id=(select manager.m_id from manager where manager.m_firstname='olena') where employee.e_firstname='volodymyr';

insert into address(city,street,manager_id)values('lviv','lisova',(select manager.m_id from manager where manager.m_firstname='oleg'));
insert into address(city,street,manager_id)values('lviv','stryiska',(select manager.m_id from manager where manager.m_firstname='ivan'));
insert into address(city,street,manager_id)values('ternopil','solota',(select manager.m_id from manager where manager.m_firstname='petro'));
insert into address(city,street,manager_id)values('ternopil','sadova',(select manager.m_id from manager where manager.m_firstname='boris'));
insert into address(city,street,manager_id)values('kuiv','bankova',(select manager.m_id from manager where manager.m_firstname='olena'));

insert into address(city,street,employee_id)values('lviv','lisova',(select employee.e_id from employee where employee.e_firstname='oksana'));
insert into address(city,street,employee_id)values('lviv','stryiska',(select employee.e_id from employee where employee.e_firstname='svitlana'));
insert into address(city,street,employee_id)values('ternopil','solota',(select employee.e_id from employee where employee.e_firstname='igor'));
insert into address(city,street,employee_id)values('ternopil','sadova',(select employee.e_id from employee where employee.e_firstname='olga'));
insert into address(city,street,employee_id)values('kuiv','bankova',(select employee.e_id from employee where employee.e_firstname='volodymyr'));



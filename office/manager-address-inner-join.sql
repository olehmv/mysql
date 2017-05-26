
select m.m_id as manager_id,m.m_firstname,m.m_lastname, a.city, a.street from manager m
inner join address a on m.m_id=a.manager_id;
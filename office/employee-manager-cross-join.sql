/* cross join -> cartesian product will match each record
 from left side table to each record in right side table*/
 
 select * from employee cross join manager;
 /*output -> number of row in employee e table multiply number of row in manager m table -> output=e*m
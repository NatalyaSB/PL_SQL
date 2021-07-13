load data
 infile 'modul.csv'
 into table Natali.modul
 fields terminated by ";" optionally enclosed by '"'		  
 ( course_ID, modul_ID, modul_name, content char(1048576) )
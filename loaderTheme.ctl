load data
 infile 'theme.csv'
 into table Natali.theme
 fields terminated by ";" optionally enclosed by '"'		  
 ( theme_ID, modul_ID, theme_name, text char(1048576) )
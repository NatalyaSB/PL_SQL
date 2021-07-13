 CREATE OR REPLACE  PROCEDURE insert_Task
/*AUTHID CURRENT_USER*/
IS
BEGIN
   
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (31,1,1,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (1,2,2,1)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (31,3,4,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (1,4,4,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (31,41,16,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (31,6,6,1)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (31,7,7,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (3,8,7,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (4,9,8,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (5,10,7,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (5,11,8,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (6,12,9,1)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (7,13,6,1)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (8,14,6,1)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (9,15,10,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (9,16,11,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (10,17,11,1)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (11,18,10,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (11,19,11,1)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (12,20,10,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (12,21,11,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (14,22,10,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (15,23,12,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (17,26,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (18,27,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (19,28,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (20,29,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (21,30,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (22,31,15,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (23,32,15,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (24,33,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (25,34,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (26,35,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (27,36,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (28,37,13,0)';
  EXECUTE IMMEDIATE 'INSERT INTO Task (theme_ID, Task_Id, Dictsk_Id, Typetsk) VALUES (31,40,14,0)';
END insert_Task;

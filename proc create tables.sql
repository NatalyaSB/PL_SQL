CREATE OR REPLACE  PROCEDURE create_tables
/*AUTHID CURRENT_USER*/
 IS
BEGIN

  /*create table modul */
  execute IMMEDIATE 'CREATE TABLE modul 
  (
         course_ID number(6) 
         ,modul_ID number(6) 
         ,modul_name varchar(500)
         ,content nclob
         ,CONSTRAINT pk_modul PRIMARY KEY (modul_ID)
  )';
 

  /*create table theme */
  execute IMMEDIATE 'CREATE TABLE theme 
  (
         theme_ID number(2) not null
         ,modul_ID number(3) not null
         ,theme_name varchar(500) not null
         ,text nclob
         ,CONSTRAINT pk_theme PRIMARY KEY (theme_ID)
  )';

  /*dictionaryTask*/
  execute IMMEDIATE 'CREATE TABLE dictionaryTask 
  (
         dicTsk_ID number(6) 
         ,text varchar(500)
         ,CONSTRAINT pk_dicTsk PRIMARY KEY (dicTsk_ID)
  )';

  /*Task*/
  execute IMMEDIATE 'CREATE TABLE Task 
  (
         theme_ID number(2)
         ,task_ID number(6)
         ,dicTsk_ID number(6) 
         ,typeTsk number(1)
         ,CONSTRAINT pk_task PRIMARY KEY (task_ID)
  )';

  /*rule*/
  execute IMMEDIATE 'CREATE TABLE Rule 
  ( 
         rule_ID number(6) 
         ,text nclob
         ,CONSTRAINT pk_rule PRIMARY KEY (rule_ID)
  )';
  
  /*List*/
  execute IMMEDIATE 'CREATE TABLE List 
  (
         list_ID number(5)
         ,item_number_list number(2)
         ,text varchar2(255)
         ,answer_ID  number(5)
         ,list_type varchar2(255)
         ,item_list_ID number(5)
         ,CONSTRAINT pk_list_ID PRIMARY KEY (list_id,answer_id)
  )';

 /*Question*/
  execute IMMEDIATE 'CREATE TABLE Question 
  (
         task_ID number(6)
         ,question_ID number(6)
         ,question_text varchar2(500)
         ,question_text_original varchar2(500)
         ,CONSTRAINT pk_question PRIMARY KEY (question_ID)
  )';

  /*RuleMulty*/
  execute IMMEDIATE 'CREATE TABLE RuleMulty 
  ( 
         question_ID number(6)
         ,ordinal_number_question_item number(2)
         ,rule_ID number(6) 
   )';
 
  
  /*answer*/
  execute IMMEDIATE 'CREATE TABLE answer 
  ( 
         task_ID number(6)                       --ID задания
         ,question_ID number(6)                  --ID вопроса
         ,ordinal_number_question_item number(2) --порядковый номер элемента вопроса
         ,type_task varchar2(255)                --тип задания
         ,type_symbol varchar2(255)              --тип символа
         ,text varchar2(255)                     --текст
         ,list_ID number(5)                      --ID списка
         ,answer_ID  number(5)                   --ID ответа
         ,answer varchar2(255)                   --ответ
         ,count_symbol number(5)                 --количество символов
         ,rule_IDold number(6)                   --ID правила устаревш
         ,CONSTRAINT PK_AnswerID PRIMARY KEY (question_id,ordinal_number_question_item)
   )';
 
  /*story*/
  execute IMMEDIATE 'CREATE TABLE story 
  (
         user_name VARCHAR2(100) 
         ,result_true NUMBER(2) 
         ,type_rec VARCHAR2(2) 
         ,dt DATE 
  )';
  
  execute IMMEDIATE 'CREATE TABLE story_log 
  (
         user_name VARCHAR2(100) 
         ,result_true NUMBER(2) 
         ,type_rec VARCHAR2(2) 
         ,dt DATE 
  )';
   /*storyAnswer*/
  execute IMMEDIATE 'CREATE TABLE  storyAnswer  
  (
         user_name VARCHAR2(100)
         ,question_ID number(6)
         ,ordinal_number_question_item number(2)
         ,user_answer VARCHAR2(255)
         ,dt DATE
   )';
   
  /*winner*/
  execute IMMEDIATE 'CREATE TABLE winner 
  (
         user_name VARCHAR2(100) 
         ,result_true NUMBER(2)
         ,dt_b DATE
         ,dt_e DATE
         ,count_sec NUMBER(4)
   )';
   /*создание тригера для поиска победителей*/
   /*result_qw*/
   execute IMMEDIATE 'CREATE GLOBAL TEMPORARY TABLE result_qw 
        (
        task_id                 NUMBER(6)     --task.task_id%TYPE
        ,typetsk                NUMBER(1)     --task.typetsk%TYPE
        ,text                   VARCHAR2(500) --dictionarytask.text%TYPE
        ,question_text          VARCHAR2(500) --question.question_text%TYPE
        ,question_id            NUMBER(6)     --question.question_text%TYPE
   ) ON COMMIT PRESERVE ROWS';

   
END create_tables;

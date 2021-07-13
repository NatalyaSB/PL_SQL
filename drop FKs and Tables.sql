ALTER TABLE Task
  DROP CONSTRAINT fk_task_dictionaryTask;
    
ALTER TABLE RuleMulty
  DROP CONSTRAINT fk_ruleMulty_rule;
        
ALTER TABLE answer
  DROP CONSTRAINT fk_answ_ques;

ALTER TABLE RuleMulty
  DROP CONSTRAINT fk_question_ID_ordinal_num;

ALTER TABLE theme
  DROP CONSTRAINT fk_modul_ID;

ALTER TABLE TASK
  DROP CONSTRAINT fk_TASK_theme_ID;

ALTER TABLE question
  DROP CONSTRAINT fk_question_TASK_ID;
        
  
  
  
  DROP TABLE   answer;
  DROP TABLE   dictionarytask;
  DROP TABLE   LIST;
  DROP TABLE   modul;
  DROP TABLE   question;
  DROP TABLE   result_qw;
  DROP TABLE   rule;
  DROP TABLE   rulemulty;
  DROP TABLE   story;
  DROP TABLE   storyanswer;
  DROP TABLE   task;
  DROP TABLE   theme;
  DROP TABLE   winner;
  DROP TABLE   story_log;
  
 DROP PROCEDURE create_foreign_keys;
 DROP PROCEDURE create_tables;
 DROP PROCEDURE create_trigger;
 DROP PROCEDURE insert_answer;
 DROP PROCEDURE insert_dictionarytask;
 DROP PROCEDURE insert_list;
 DROP PROCEDURE insert_question;
 DROP PROCEDURE insert_rule;
 DROP PROCEDURE insert_rulemulty;
 DROP PROCEDURE insert_story;
 DROP PROCEDURE insert_storyanswer;
 DROP PROCEDURE insert_task;
        

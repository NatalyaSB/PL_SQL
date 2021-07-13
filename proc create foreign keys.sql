CREATE OR REPLACE PROCEDURE create_foreign_keys
IS
BEGIN
  
  EXECUTE IMMEDIATE 'ALTER TABLE Task
  ADD CONSTRAINT fk_task_dictionaryTask
    FOREIGN KEY (dicTsk_ID)
    REFERENCES dictionaryTask(dicTsk_ID)';  
    
  EXECUTE IMMEDIATE 'ALTER TABLE RuleMulty
  ADD CONSTRAINT fk_ruleMulty_rule
    FOREIGN KEY (rule_ID)
    REFERENCES Rule(rule_ID)';


  EXECUTE IMMEDIATE 'ALTER TABLE answer
  ADD CONSTRAINT fk_answer_ID_list
        FOREIGN KEY  (list_id,answer_id)
        REFERENCES List(list_id,answer_id)';
        
  EXECUTE IMMEDIATE 'ALTER TABLE answer
  ADD CONSTRAINT fk_answ_ques
        FOREIGN KEY  (question_id)
        REFERENCES question(question_id)';

  EXECUTE IMMEDIATE 'ALTER TABLE RuleMulty
  ADD CONSTRAINT fk_question_ID_ordinal_num
        FOREIGN KEY  (question_id,ordinal_number_question_item)
        REFERENCES answer(question_ID,ordinal_number_question_item)';

  EXECUTE IMMEDIATE 'ALTER TABLE theme
  ADD CONSTRAINT fk_modul_ID
        FOREIGN KEY  (modul_ID)
        REFERENCES modul(modul_ID)';

  EXECUTE IMMEDIATE 'ALTER TABLE TASK
  ADD CONSTRAINT fk_TASK_theme_ID
        FOREIGN KEY  (theme_ID)
        REFERENCES theme(theme_ID)';

  EXECUTE IMMEDIATE 'ALTER TABLE question
  ADD CONSTRAINT fk_question_TASK_ID
        FOREIGN KEY  (TASK_ID)
        REFERENCES task(TASK_ID)';

END create_foreign_keys;       


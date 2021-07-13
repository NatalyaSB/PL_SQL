CREATE OR REPLACE  PROCEDURE create_trigger
IS 
BEGIN
execute IMMEDIATE 'CREATE OR REPLACE TRIGGER insert_story_win
  BEFORE INSERT ON story
  FOR EACH ROW
  DECLARE 
     dt_beg DATE; 
  BEGIN 
    IF :NEW.type_rec=''b''
      THEN
        DELETE FROM winner WHERE user_name=:NEW.user_name AND dt_e IS NULL;
        INSERT INTO winner (user_name,dt_b,result_true) VALUES (:NEW.user_name,:NEW.dt,0);
    END IF;
    IF :NEW.type_rec=''e'' AND :NEW.result_true=6 
       THEN
         dt_beg := NULL;
         SELECT dt_b INTO dt_beg
         FROM winner
         WHERE user_name=:NEW.user_name AND ROWNUM<2 AND result_true=0;
         
         IF dt_beg IS NOT NULL AND dt_beg < :NEW.dt
           THEN 
             UPDATE winner SET dt_e = :NEW.dt ,count_sec=(:NEW.dt-dt_beg)*24*60*60,  result_true=6 
                WHERE user_name=:NEW.user_name AND dt_b = dt_beg;
         END IF;
     END IF;
     EXCEPTION 
       WHEN NO_DATA_FOUND THEN
       INSERT INTO story_log (user_name,result_true,type_rec,dt)
        VALUES (:New.user_name, :NEW.result_true, :NEW.type_rec, :NEW.dt);
  END;';
END create_trigger;

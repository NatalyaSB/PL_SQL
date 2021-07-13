/*Курсор заполняется случайной последовательностью заданий. 
Для каждого задания случайным образом находим вопрос, 
записываем его в таблицу result_qw – это временная таблица, 
данные в ней существуют в пределах одной сессии.*/
DECLARE
     CURSOR get_task (c_ID modul.course_id%TYPE, m_ID modul.modul_id%TYPE ) IS 
        SELECT DISTINCT spr.dictsk_id
        FROM modul m 
             INNER JOIN theme          t    ON m.modul_id      =      t.modul_id 
             INNER JOIN task           z    ON z.theme_id      =      t.theme_id
             INNER JOIN dictionarytask spr  ON spr.dictsk_id   =      z.dictsk_id
             INNER JOIN question       q    ON q.task_id       =      z.task_id
        WHERE      1    =              1
                   AND m.course_id     =    c_ID
                   AND m.modul_id      =    m_ID
        ORDER BY dbms_random.value();
BEGIN
  FOR v_gt IN get_task(1, 5)
  LOOP
      INSERT INTO result_qw
      SELECT * 
      FROM
        (
        SELECT z.task_id, z.typetsk, spr.text, q.question_text, q.question_id
        FROM task         z    
                 INNER JOIN dictionarytask spr  ON spr.dictsk_id   =      z.dictsk_id
                 INNER JOIN question       q    ON q.task_id       =      z.task_id
        WHERE      1    =              1
                   AND spr.dictsk_id   =    v_gt.dictsk_id
        ORDER BY dbms_random.value()
        )
      WHERE ROWNUM<2;
  END LOOP;
END;

/*результат работы скрипта в таблице result_qw*/

  SELECT * FROM result_qw;

/*TRUNCATE TABLE result_qw;*/

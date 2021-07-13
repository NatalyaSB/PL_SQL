/*Скрипт по ID вопроса возвращает шаблон ответа
question_id      =    58*/

SELECT ot.task_id
       ,ot.question_id
       ,ot.ordinal_number_question_item
       ,ot.type_task
       ,ot.type_symbol
       ,ot.text
       ,ot.list_id
       ,ot.answer_id
       ,ot.answer
       ,ot.count_symbol
       ,sp.text AS text_anw_in_list
       ,mlt.rule_text
FROM answer ot
     LEFT JOIN Natali.list sp ON   ot.list_id    =   sp.list_id
                       AND  ot.answer_id  =   sp.answer_id
     LEFT JOIN (
                 SELECT ruls.question_id
                        ,ruls.ordinal_number_question_item
                        ,LISTAGG(r.text,' ')  rule_text
                 FROM  RULE r 
                       INNER JOIN rulemulty ruls ON r.rule_id  = ruls.rule_id
                 GROUP BY ruls.question_id, ruls.ordinal_number_question_item  
               ) mlt ON   ot.question_id                       =    mlt.question_id
                     AND  ot.ordinal_number_question_item      =    mlt.ordinal_number_question_item
WHERE ot.question_id      =    58
ORDER BY ot.ordinal_number_question_item 





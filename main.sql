/*  запускаем скрипт, создающий таблицы*/
BEGIN
    create_tables;
END;

    /*Далее, используя лоадер, необходимо заполнить таблицы Modul & Theme*/
/*sqlldr Natali@OracleNew/Natali control=loaderModul.ctl*/
/*sqlldr Natali@OracleNew/Natali control=loaderTheme.ctl*/


SELECT * FROM modul;
SELECT * FROM theme;

       /*Создаем тригеер, для заполнения таблицы победителей winner*/
BEGIN
  create_trigger;
END;
       /*Заполняем данными таблицу task*/
BEGIN
  insert_task;
END;
       /*Заполняем данными таблицу dictionarytask*/
BEGIN
  insert_dictionarytask;
END;
       /*Заполняем данными таблицу QUESTION*/
BEGIN
  insert_QUESTION;
END;
       /*Заполняем данными таблицу ANSWER*/
BEGIN
  insert_ANSWER;
END;
       /*Заполняем данными таблицу RULE*/
BEGIN
  insert_RULE;
END;
       /*Заполняем данными таблицу rulemulty*/
BEGIN
  insert_rulemulty;
END;
       /*Заполняем данными таблицу List*/
BEGIN
  insert_List;
END;
       /*Заполняем данными таблицу story*/
BEGIN
  insert_story;
END;
       /*Заполняем данными таблицу storyanswer*/
BEGIN
  insert_storyanswer;
END;
       /* Создаем внешние ключи*/
BEGIN
  create_foreign_keys;
END;



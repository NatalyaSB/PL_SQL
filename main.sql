/*  ��������� ������, ��������� �������*/
BEGIN
    create_tables;
END;

    /*�����, ��������� ������, ���������� ��������� ������� Modul & Theme*/
/*sqlldr Natali@OracleNew/Natali control=loaderModul.ctl*/
/*sqlldr Natali@OracleNew/Natali control=loaderTheme.ctl*/


SELECT * FROM modul;
SELECT * FROM theme;

       /*������� �������, ��� ���������� ������� ����������� winner*/
BEGIN
  create_trigger;
END;
       /*��������� ������� ������� task*/
BEGIN
  insert_task;
END;
       /*��������� ������� ������� dictionarytask*/
BEGIN
  insert_dictionarytask;
END;
       /*��������� ������� ������� QUESTION*/
BEGIN
  insert_QUESTION;
END;
       /*��������� ������� ������� ANSWER*/
BEGIN
  insert_ANSWER;
END;
       /*��������� ������� ������� RULE*/
BEGIN
  insert_RULE;
END;
       /*��������� ������� ������� rulemulty*/
BEGIN
  insert_rulemulty;
END;
       /*��������� ������� ������� List*/
BEGIN
  insert_List;
END;
       /*��������� ������� ������� story*/
BEGIN
  insert_story;
END;
       /*��������� ������� ������� storyanswer*/
BEGIN
  insert_storyanswer;
END;
       /* ������� ������� �����*/
BEGIN
  create_foreign_keys;
END;



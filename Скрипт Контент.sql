----------------------------------------------------------------
--������ ���������� ������ � ���� ��� ����� � ID=1
----------------------------------------------------------------
SELECT m.modul_name   AS "������������ ������"
       ,m.modul_id    AS "ID ������"
       ,t.theme_id    AS "ID ����"
       ,t.theme_name  AS "������������ ����"
FROM theme t INNER JOIN modul m
     ON t.modul_id      =    m.modul_id
WHERE     1             =    1
      AND course_id     =    1
ORDER BY m.modul_id, t.theme_id
----------------------------------------------------------------
--����� �������� �� ID �����, ID ������, ID ����
----------------------------------------------------------------
SELECT t.text  AS "content"
FROM theme t INNER JOIN modul m
     ON t.modul_id      =    m.modul_id
WHERE     1             =    1
      AND course_id     =    1
      AND m.modul_id    =    1
      AND t.theme_id    =    2
----------------------------------------------------------------
--
----------------------------------------------------------------

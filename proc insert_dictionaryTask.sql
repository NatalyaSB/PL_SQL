CREATE OR REPLACE  PROCEDURE insert_dictionaryTask
/*AUTHID CURRENT_USER*/
 IS
BEGIN
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (1,''�������� ������������ ��������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (2,''������������, ���� ��� ��������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (3,''�������� ������������� ����� ���������. �� ���� ������ ���������? '')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (4,''�������� ������������� ����� ���������. ���� ���������� ���������? '')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (5,''�������� ����������� ��������� ������, ������� ������, ����� ������������� � ���������� ����������������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (6,''�������� ����������� �����:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (7,''��������� ���������� ����� �� ������������ ���������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (8,''�������� ����������� ��������� ������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (9,''�������� ���������� �������'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (10,''�������� �����������, ���������� ����� ����������.'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (11,''���������� ����� ����������.'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (12,''�������� �����������, ��������� ���������� ����� ����������.'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (13,''�������� ���������� ������� ������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (14,''�������� ��� ������������� ����������� ����� � ���������� ����� ����������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (15,''��������� ������ � ����������� ������ ����������:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (16,''��������� ������ � �������� ����� �������:'')';
END insert_dictionaryTask;

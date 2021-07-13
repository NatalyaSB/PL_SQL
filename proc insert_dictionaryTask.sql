CREATE OR REPLACE  PROCEDURE insert_dictionaryTask
/*AUTHID CURRENT_USER*/
 IS
BEGIN
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (1,''Запишите числительное прописью:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (2,''Просклоняйте, если это возможно:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (3,''Оформите вступительную часть заявления. От кого подано заявление? '')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (4,''Оформите вступительную часть заявления. Кому адресовано заявление? '')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (5,''Запишите предложения раскрывая скобки, выбирая разряд, форму числительного и зависимого существительного:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (6,''Вставьте пропущенные буквы:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (7,''Подберите правильное слово из предложенных вариантов:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (8,''Запишите предложения раскрывая скобки:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (9,''Вставьте правильный вариант'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (10,''Запишите предложения, расставляя знаки препинания.'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (11,''Расставьте знаки препинания.'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (12,''Запишите предложения, правильно расставляя знаки препинания.'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (13,''Выберите правильный вариант ответа:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (14,''Вставьте при необходимости пропущенные буквы и расставьте знаки препинания:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (15,''Исправьте ошибки в расстановке знаков препинания:'')';
  EXECUTE IMMEDIATE 'INSERT INTO dictionaryTask (dicTsk_ID,text) VALUES (16,''Раскройте скобки и замените цифры словами:'')';
END insert_dictionaryTask;

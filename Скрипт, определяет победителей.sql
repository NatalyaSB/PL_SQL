SELECT t1.user_name
       ,st.result_true res
       ,t1.min_b_dt
       ,t2.min_e_dt
       ,(t2.min_e_dt-t1.min_b_dt)*24*60*60 sec
FROM story st
INNER JOIN (
     SELECT user_name, MIN(dt) min_b_dt
     FROM story
     WHERE        type_rec    =       'b'
           AND    dt          >=      TO_DATE('20210621', 'yyyymmdd')
     GROUP BY user_name
) t1 ON st.user_name          =       t1.user_name
INNER JOIN (
     SELECT user_name, MIN(dt) min_e_dt
     FROM story
     WHERE        type_rec    =       'e'
           AND    dt          >=      TO_DATE('20210621', 'yyyymmdd')
     GROUP BY user_name
) t2 ON st.user_name          =       t1.user_name
       AND st.dt              =       t2.min_e_dt
WHERE     1                   =       1
      AND st.result_true      =       6
  /*    AND t2.min_e_dt         >       t1.min_b_dt*/
ORDER BY sec;            

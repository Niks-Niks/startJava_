﻿SELECT * FROM jaeger;
SELECT * FROM jaeger WHERE status != 'destroyed';
SELECT * FROM jaeger WHERE mark IN ('Mark-1', 'Mark-6');
SELECT * FROM jaeger ORDER BY mark DESC; 
SELECT * FROM jaeger WHERE launch = (SELECT MAX(launch) FROM jaeger);
SELECT * FROM jaeger WHERE kaijuKill = (SELECT MAX(kaijuKill) FROM jaeger);
SELECT * FROM jaeger WHERE kaijuKill = (SELECT MIN(kaijuKill) FROM jaeger);
SELECT AVG(weight) FROM jaeger;
UPDATE jaeger SET kaijukill = kaijukill + 1 WHERE status != 'destroyed';
DELETE FROM jaeger WHERE status = 'destroyed';
--question1.1
SELECT COUNT(*) AS total_admissions
FROM admissions;

--question 1.2
SELECT AVG(DATEDIFF(discharge_date, admission_date)) AS avg_length_of_stay
FROM admissions;


--question 2.1
SELECT primary_diagnosis, COUNT(*) AS total_admissions
FROM admissions
GROUP BY primary_diagnosis
ORDER BY total_admissions DESC;

--question 2.2
SELECT service, AVG(DATEDIFF(discharge_date,admission_date))AS avg_length_of
_stay  FROM admissions GROUP BY service
ORDER BY avg_length_of_stay DESC;

--question2.3
SELECT discharge_disposition, COUNT(*)AS total_discarges
FROM discharges
GROUP BY discharge_disposition
ORDER BY total_discarge DESC;

 --question 3.1
 SELECT service, COUNT(*) AS total_admissions
 FROM admissions
 GROUP BY service
 HAVING COUNT(*) > 5
 ORDER BY total_admissions DESC;

 --question 3.2
 SELECT AVG(DATEDIFF(discharge_date,admission_date)) AS avg_length_of
 _stay FROM admissions
 WHERE primary_diagnosis = 'strokes';

 --question 4.1
 SELECT acuity, COUNT(*) AS total_visits 
 FROM ed_visits
 GROUP BY acuity 
 ORDER BY total_visits DESC;

 --Question 4.2
 SELECT primary_diagnosis, service, COUNT(*) AS total_admissions
FROM Admissions
GROUP BY primary_diagnosis, service
ORDER BY total_admissions DESC;


--question 5.1
SELECT 
    MONTH(admission_date) AS admission_month,
    COUNT(*) AS total_admissions
FROM Admissions
GROUP BY MONTH(admission_date)
ORDER BY admission_month;

--question 5.2
SELECT 
    primary_diagnosis,
    MAX(DATEDIFF(discharge_date, admission_date)) AS max_length_of_stay
FROM Admissions
GROUP BY primary_diagnosis
ORDER BY max_length_of_stay DESC;

--Bonus challenge
SELECT 
    service,
    SUM(DATEDIFF(discharge_date, admission_date)) AS total_length_of_stay,
    AVG(DATEDIFF(discharge_date, admission_date)) AS avg_length_of_stay
FROM Admissions
GROUP BY service
ORDER BY avg_length_of_stay DESC;



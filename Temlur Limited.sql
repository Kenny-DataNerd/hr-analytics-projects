use HR_Dataset

SELECT *
FROM HRData

---Employees earning above 50,000
SELECT Employee_Name, EmpID, Position, Salary
FROM HRData
WHERE Salary >= 50000
ORDER BY Salary DESC;

---All Production Technician staff
SELECT Employee_Name, EmpID, Position
FROM HRData
WHERE Position like 'Production Technician%';

---Determining the names of all managers
SELECT Sum(ManagerID) AS Sum_ManagerID, ManagerName, Department
FROM HRData
GROUP BY ManagerName, Department;


---Determining the number of employees who works under Michael Albert and fully meets the performance score
SELECT Employee_Name, ManagerName, PerformanceScore
FROM HRData
WHERE ManagerName = 'Michael Albert' and PerformanceScore = 'Fully Meets';

---Determining the impact of recruitment sources on performance score for employees who fully meets the performance score
SELECT RecruitmentSource, Count(PerformanceScore) AS No_PerformanceScore
FROM HRData
WHERE PerformanceScore = 'Fully Meets'
GROUP BY RecruitmentSource
ORDER BY No_PerformanceScore DESC;
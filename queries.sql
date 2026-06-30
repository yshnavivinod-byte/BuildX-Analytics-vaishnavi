-- Query 1: Display all students
SELECT * FROM cleaned_dataset;

-- Query 2: Count total students
SELECT COUNT(*) AS Total_Students
FROM cleaned_dataset;

-- Query 3: Count placed students
SELECT COUNT(*) AS Placed_Students
FROM cleaned_dataset
WHERE status = 'Placed';

-- Query 4: Average salary by degree type
SELECT degree_type, AVG(salary) AS Average_Salary
FROM cleaned_dataset
WHERE status = 'Placed'
GROUP BY degree_type;

-- Query 5: Placement count by gender
SELECT gender, COUNT(*) AS Placed_Count
FROM cleaned_dataset
WHERE status = 'Placed'
GROUP BY gender;

-- Query 6: Placement count by specialization
SELECT specialisation, COUNT(*) AS Placed_Count
FROM cleaned_dataset
WHERE status = 'Placed'
GROUP BY specialisation;

-- Average Salary by Department
SELECT d.dept_name, AVG(s.salary) AS avg_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;

-- Employees with Attendance > 210 Days
SELECT e.emp_name, a.days_present
FROM employees e
JOIN attendance a ON e.emp_id = a.emp_id
WHERE a.days_present > 210;

-- Employees Earning Above Average Salary
SELECT e.emp_name, s.salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.salary > (SELECT AVG(salary) FROM salaries);

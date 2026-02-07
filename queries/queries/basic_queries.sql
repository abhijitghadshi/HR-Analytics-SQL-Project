-- Employee Details with Department
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Highest Paid Employee
SELECT e.emp_name, s.salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
ORDER BY s.salary DESC
LIMIT 1;

-- Department-wise Employee Count
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

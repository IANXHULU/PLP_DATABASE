SELECT location, AVG(time_spent) AS average_time_spent
FROM atsusm
GROUP BY location
ORDER BY average_time_spent DESC;

SELECT location, income, AVG(time_spent) AS average_time_spent
FROM atsusm
GROUP BY location, income
ORDER BY location, average_time_spent DESC;

SELECT location, income, AVG(time_spent) AS average_time_spent
FROM social_media_usage
WHERE income > 10000  -- Filter by time spent above a threshold
GROUP BY location, income
HAVING AVG(time_spent) > overall_average  -- Filter by average time spent above overall average
ORDER BY location, average_time_spent DESC;


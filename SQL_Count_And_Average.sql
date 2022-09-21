/*In this MySQL challenge, 
your query should return the names of the people who are reported to (excluding null values), the number of members that report to them, and the average age of those members as an integer. The rows should be ordered by the names in alphabetical order. Your output should look like the following table.*/

SELECT ReportsTo, count(ReportsTo) as Members,
    round(avg(Age), 0) as 'Average Age'
    FROM maintable_QYL4D
    Where ReportsTo IS NOT NULL
    GROUP BY ReportsTo
    ORDER BY  ReportsTo

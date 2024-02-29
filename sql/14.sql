/*
 * Create a report that shows the total revenue per month and year.
 *
 * HINT:
 * This query is very similar to the previous problem,
 * but requires an additional JOIN.
 */
SELECT
    EXTRACT(YEAR FROM rental.rental_date) AS "Year",
    EXTRACT(MONTH FROM rental.rental_date) AS "Month",
    SUM(payment.amount) AS "Total Revenue"
FROM
    payment
JOIN rental ON payment.rental_id = rental.rental_id
GROUP BY ROLLUP ("Year", "Month")
ORDER BY
    "Year", "Month";

--How many staff are there in all of the UK stores?

SELECT SUM(staff_numbers) AS total_uk_staff
    FROM dim_store
    WHERE country_code LIKE 'GB';
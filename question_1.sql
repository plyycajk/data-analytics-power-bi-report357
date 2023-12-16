SELECT SUM(staff_numbers) AS total_uk_staff
    FROM dim_store
    WHERE country_code LIKE 'GB';
SELECT
    constructorid,
    name AS constructor_name,
    nationality,
    CASE
        WHEN nationality IN (
            'British',
            'German',
            'Italian',
            'French',
            'Austrian',
            'Swiss',
            'Dutch',
            'Spanish',
            'Belgian'
        ) THEN 'European'
        ELSE 'Non-European'
    END AS region
FROM constructors
ORDER BY region, constructor_name;
SELECT 
    CASE 
        -- If ID is odd and it's the last row, keep it same
        WHEN id % 2 = 1 AND id = (SELECT COUNT(*) FROM Seat) THEN id
        -- If ID is odd, pair it with the next even ID
        WHEN id % 2 = 1 THEN id + 1
        -- If ID is even, pair it with the previous odd ID
        ELSE id - 1
    END AS id,
    student
FROM Seat
ORDER BY id ASC;
# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE p1 FROM Person p1
INNER JOIN Person p2 
WHERE 
    p1.id > p2.id and 
    p1.email = p2.email
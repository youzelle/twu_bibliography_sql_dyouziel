-- Who has checked out more that 1 item? 
-- Tip: Research the GROUP BY syntax.

SELECT name 
FROM member 
WHERE id in
  (SELECT member_id 
   FROM  checkout_item 
   GROUP BY member_id
   HAVING COUNT(member_id) > 1);

-- Anand Beck
-- Frank Smith
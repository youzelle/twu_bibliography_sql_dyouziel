-- How many people have not checked out anything?
SELECT COUNT(member.name)
FROM member
WHERE member.id NOT IN (SELECT member_id FROM checkout_item);

-- 37

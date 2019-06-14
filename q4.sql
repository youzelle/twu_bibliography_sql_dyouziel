-- Add the book 'The Pragmatic Programmer', and add yourself as a member. 
-- Check out 'The Pragmatic Programmer'. Use your query from question 1 
-- to verify that you have checked it out. Also, provide the SQL used to update the database.

INSERT INTO book (title)
VALUES ('Pragmatic Programmer');

INSERT INTO memeber (name) 
VALUES ('Danni Youziel');

INSERT INTO checkout_item (member_id, book_id)
VALUES ((SELECT id FROM member WHERE member.name  = 'Danni Youziel'),
       (SELECT id FROM book WHERE book.title = 'Pragmatic Programmer'));

SELECT member.name
FROM member, checkout_item, book
WHERE member.id = checkout_item.member_id AND checkout_item.book_id = book.id AND book.title = 'Pragmatic Programmer';
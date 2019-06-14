-- What books and movies aren't checked out?

SELECT title FROM book 
WHERE book.id NOT IN 
     (SELECT book_id 
      FROM checkout_item) 
      WHERE book_id IS NOT NULL)
UNION
SELECT title FROM movie
WHERE movie.id NOT IN 
     (SELECT movie_id 
      FROM checkout_item);
      WHERE movie_id IS NOT NULL);

-- 1984
-- Catcher in the Rye
-- Crouching Tiger, Hidden Dragon
-- Domain Driven Design
-- Fellowship of the Ring
-- Lawrence of Arabia
-- Office Space
-- Thin Red Line
-- To Kill a Mockingbird
-- Tom Sawyer
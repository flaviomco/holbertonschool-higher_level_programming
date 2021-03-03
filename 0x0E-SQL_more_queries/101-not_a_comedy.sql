-- script that lists all shows without the genre Comedy in the database hbtn_0d_tvshows
SELECT DISTINCT a.title FROM tv_shows AS a
       LEFT JOIN tv_show_genres AS b ON a.id = b.show_id
       LEFT JOIN tv_genres AS c on b.genre_id = c.id
WHERE
	a.title NOT IN
	(SELECT a.title FROM tv_shows as a
		INNER JOIN tv_show_genres AS b ON a.id = b.show_id
		INNER JOIN tv_genres AS c on b.genre_id = c.id
	WHERE
		c.name = "Comedy")
ORDER BY a.title;

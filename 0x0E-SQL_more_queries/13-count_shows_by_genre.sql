-- script that lists all genres from hbtn_0d_tvshows and displays the number of shows linked to each.
SELECT a.name AS genre, count(b.show_id) AS number_of_shows
       FROM tv_genres AS a INNER JOIN tv_show_genres AS b on a.id = b.genre_id
       	    GROUP BY genre ORDER BY number_of_shows DESC;

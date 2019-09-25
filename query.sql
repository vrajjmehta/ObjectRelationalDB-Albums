SELECT r.reviewerName
FROM albums a,
TABLE(a.albumReviews) r;

SELECT r.artistName
FROM albums a,
TABLE(a.albumArtists) r;

select treat(value(a) as disk_type).mediaType
from albums a 
where value(a) is of (disk_type)

select max(count(*))
from albums a
group by SYS_TYPEID(VALUE(a))

------------------------------------------------------
Q-1) Give album title, album release date and album price of all Neil Young’s albums released after 1st January 2015.

select distinct a.albumTitle, a.albumReleaseDate, a.albumPrice
from albums a,
TABLE (a.albumArtists) r
where r.artistName = 'Neil Young' and a.albumReleaseDate>'1-Jan-2015'

Q-2) Give album title and artist name for albums released only in MP3 format. Order by album title. 

select a.albumTitle, r.artistName
from albums a,
TABLE (a.albumArtists) r
where value(a) is of (mp3_type)
order by a.albumTitle

Q-3) Give lowest rated MP3 album (i.e. album with the lowest average review score). Show album title and the average score. 
Exclude albums with only one review.


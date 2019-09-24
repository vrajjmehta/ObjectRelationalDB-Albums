-- create OMDB --
-----------------
-- drop tables --
drop table albums
/ 
drop type disk_type
/ 
drop type mp3_type
/
drop type album_type
/
drop type artist_array_type
/
drop type artist_type
/
drop type review_table_type
/
drop type review_type
/
-- create types --
create or replace type artist_type as object 
(artistName 	varchar(50), 
 artistRole 	varchar(25))
/ 
create type artist_array_type  
as varray(5) of artist_type
/ 
create or replace type review_type as object 
(reviewerName 	varchar(25), 
 reviewDate   	date,
 reviewText   	varchar(250), 
 reviewScore  	number)
/
create or replace type review_table_type as table of review_type
/
create or replace type album_type as object 
(albumTitle 		varchar(50),
 albumPlaytime 		number(3), -- minutes
 albumReleaseDate 	date, 
 albumGenre 		varchar(15),
 albumPrice 		number(9,2),
 albumTracks		number(2),
 albumArtists		artist_array_type,
 albumReviews 		review_table_type,
member function discountPrice return number,
member function containsText (pString1 varchar2, pString2 varchar2) return integer)
not instantiable not final 
/
create or replace type disk_type under album_type 
( mediaType 		varchar(10),
 diskNum			number(2), -- number of disks
 diskUsedPrice 		number(9,2),
 diskDeliveryCost 	number(9,2), 
overriding member function discountPrice return number)
/
create or replace type mp3_type under album_type
(downloadSize 	number, -- size in MB
 overriding member function discountPrice return number)
/
-- create tables --
create table albums of album_type 
object id system generated
nested table albumReviews store as store_reviews 
/ 

INSERT INTO albums
values (disk_type('The Essential Bob Dylan',99,'8-Jul-2016','Pop',37.00,32,
artist_array_type(
    artist_type('Bob Dylan','Composer'),
    artist_type('Bob Dylan','Vocals')
),
review_table_type(
    review_type('Shawn','24-Jul-2018','	Wife loved it!',5),
    review_type('Reuben','2-Aug-2019','Great compilation of some of his most known songs',5)
),
'Vinyl', 2,null,11.00));


SELECT r.reviewerName
FROM albums a,
TABLE(a.albumReviews) r;

SELECT r.artistName
FROM albums a,
TABLE(a.albumArtists) r;

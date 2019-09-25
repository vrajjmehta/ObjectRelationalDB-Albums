--------INSERTION-----------------

-----------Vinyl Disk-------------------

INSERT INTO albums
values (disk_type('The Essential Bob Dylan',99,'8-Jul-2016','Pop',37.00,32,
artist_array_type(
    artist_type('Bob Dylan','Composer'),
    artist_type('Bob Dylan','Vocals')
),
review_table_type(
    review_type('Shawn','24-Jul-2018',' Wife loved it!',5),
    review_type('Reuben','2-Aug-2019','Great compilation of some of his most known songs',5)
),
'Vinyl', 2,null,11.00));

INSERT INTO albums
values (disk_type('Sketches of Spain',45,'8-Mar-2011','Jazz',14.99,6,
artist_array_type(
    artist_type('Miles Davis','Composer'),
    artist_type('Miles Davis','Musician')
),
review_table_type(
    review_type('Frederick','16-Sep-2016','Recommend listening while viewing a sunset',5),
    review_type('Juliet','12-Mar-2018','Early days of thr greates Miles--no lover of jazz should be without this album',5)
),
'Vinyl', 1, 16.29, 7.00));

INSERT INTO albums
values (disk_type('Bob Dylans Greatest Hits',45, '31-Jan-2017','Pop Rock',29.87,10,
artist_array_type(
    artist_type('Bob Dylan','Composer'),
    artist_type('Bob Dylan','Vocals')
),
review_table_type(
    review_type('Kandy','16-Mar-2015','Early Dylan in all his glory.',5),
    review_type('Stewart','18-Feb-2013','Captures Bob Dylan transformation from a folk song Composer to a rock legend',4)
),
'Vinyl', 1,null, 11.00));

INSERT INTO albums
values (disk_type('Harvest (2009 Remaster)',44,'21-Jun-2009','Rock Country',28.50,10,
artist_array_type(
    artist_type('Neil Young','Composer'),
    artist_type('Neil Young','Vocals')
),
review_table_type(
    review_type('John','18-Feb-2019','I absolutely LOVE this CD!.',5),
    review_type('Stewart','18-Feb-2013','Sounds good on vinyl!',5)
),
'Vinyl', 1, 14.99, 11.00));

INSERT INTO albums
values (disk_type('Kind Of Blue (Legacy Edition)',155,'20-Jan-2009','Jazz',19.99,21,
artist_array_type(
    artist_type('Miles Davis','Composer'),
    artist_type('Miles Davis','Musician')
),
review_table_type(
    review_type('Laurence','10-Sep-2014','Very very special recording.',5)
),
'Vinyl', 3, 16.99, 10.00));

----------------Audio CDs--------------------

INSERT INTO albums
values (disk_type('Harvest (2009 Remaster)',44,'21-Jun-2009','Rock Country',10.50, 10,
artist_array_type(
    artist_type('Neil Young','Composer'),
    artist_type('Neil Young','Vocals')
),
review_table_type(
    review_type('John','18-Feb-2019',' I absolutely LOVE this CD!',5),
    review_type('Anthony','16-Aug-2019','Neil Youngs signature album.',4)
),
'Audio CD', 1, 4.99, 11.00));

INSERT INTO albums
values (disk_type('The Essential Bob Dylan',99,'8-Jul-2016','Pop',26.17,32,
artist_array_type(
    artist_type('Bob Dylan','Composer'),
    artist_type('Bob Dylan','Vocals')
),
review_table_type(
    review_type('Christopher','24-Jun-2016','This is a terrific album.',5),
    review_type('Cauley','2-Aug-2015','There can only be one Bob Dylan. God blessed him with the gift of verse.',5)
),
'Audio CD', 2,null, 7.00));

INSERT INTO albums
values (disk_type('Bob Dylans Greatest Hits', 50,'1-Jun-1999','Pop Rock', 20.81, 10,
artist_array_type(
    artist_type('Bob Dylan','Composer'),
    artist_type('Bob Dylan','Vocals')
),
review_table_type(
    review_type('Kandy','16-Mar-2015','Early Dylan in all his glory.',5),
    review_type('Stewart','18-Feb-2013','Captures Bob Dylan transformation from a folk song Composer to a rock legend',4)
),
'Audio CD', 1,null, 7.00));

INSERT INTO albums
values (disk_type('Kind Of Blue (Legacy Edition)',155,'20-Jan-2009','Jazz', 19.99, 21,
artist_array_type(
    artist_type('Miles Davis','Composer'),
    artist_type('Miles Davis','Musician')
),
review_table_type(
    review_type('Amy','17-Apr-2018','Poor quality sound compared to the vinyl record.',2) 
),
'Audio CD', 3, 16.99, 10.00));

INSERT INTO albums
values (disk_type('Sketches of Spain', 45,'20-Jan-2009','Jazz', 3.11, 6,
artist_array_type(
    artist_type('Miles Davis','Composer'),
    artist_type('Miles Davis','Musician')
),
review_table_type(
    review_type('Sara','3-Oct-2016','Another Must Have! One of Miles finest works.',5),
    review_type('Douglas','14-Jun-2014','You might like it, but I admit it seems like a difficult listen.',5)
),
'Audio CD', 1, 6.41, 7.00));

INSERT INTO albums
values (disk_type('Gustav Mahler Symphony No. 9',45,'12-Oct-2017','Classical', 23.10, 5,
artist_array_type(
    artist_type('David Zinman','Conductor'),
    artist_type('Gustav Mahler','Composer'),
    artist_type('Tonhalle Orchestra','Orchestra')
),
review_table_type(
    review_type('Lindon','3-Dec-2010','This is an uneventful but fine recording.',3),
    review_type('Prescott','24-Aug-2013','This is truly a spellbinding record.',5)
),
'Audio CD', 1, 15.20, 7.00));

-------------------------MP3---------------------

INSERT INTO albums
values (mp3_type('Bob Dylans Greatest Hits',55, '1-Jan-2019','Pop Rock', 5.98, 10,
artist_array_type(
    artist_type('Bob Dylan','Composer'),
    artist_type('Bob Dylan','Vocals')
),
review_table_type(
    review_type('Mandy','16-Mar-2019','Fantastic music!',5)
),
60));

INSERT INTO albums
values (mp3_type('Best of Neil Young', 153,'21-Feb-2019','Pop Rock', 17.50, 35,
artist_array_type(
    artist_type('Neil Young','Composer'),
    artist_type('Neil Young','Vocals')
),
review_table_type(
    review_type('John','16-Apr-2019','Great artist and great music.',5)
),
165));

INSERT INTO albums
values (mp3_type('Harvest (2009 Remaster)', 44,'21-Jun-2009','Rock Country', 9.49, 10,
artist_array_type(
    artist_type('Neil Young','Composer'),
    artist_type('Neil Young','Vocals')
),
review_table_type(
    review_type('John','16-Apr-2019','Great artist and great music.',5)
),
52));

INSERT INTO albums
values (mp3_type('Sketches of Spain', 45,'16-Aug-2013','Jazz', 24.99, 6,
artist_array_type(
    artist_type('Miles Davis','Composer'),
    artist_type('Miles Davis','Musician')
),
review_table_type(
    review_type('Douglas','14-Jun-2014','You might like it but I admit it seems like a difficult listen.',5) 
),
51));

INSERT INTO albums
values (mp3_type('B.B. King Greatest Hits', 114,'16-Jul-2013','Rock Blues', 11.49, 24,
artist_array_type(
    artist_type('B.B. King','Vocals'),
    artist_type('B.B. King','Guitar')
),
review_table_type(
    review_type('David','18-May-2015','I highly recommend this album to anyone who want to see what BB King is all about.',4)
),
125));

INSERT INTO albums
values (mp3_type('The Essential Bob Dylan', 99,'8-Jul-2016','Pop', 16.00, 32,
artist_array_type(
    artist_type('Bob Dylan','Composer'),
    artist_type('Bob Dylan','Vocals')
),
review_table_type(
    review_type('Christopher','24-Jun-2016','This is a terrific album.',5),
    review_type('Cauley','2-Apr-2015','There can only be one Bob Dylan. God blessed him with the gift of verse',5) 
),
112));

INSERT INTO albums
values (mp3_type('Other Peoples Lives', 42,'15-Feb-2019','Rock Dance', 9.49, 10,
artist_array_type(
    artist_type('Stats','Composer'),
    artist_type('Stats','Vocals')
),
review_table_type(
    review_type('George','17-Sep-2019','Good dancing music.',3) 
),
45));

SCENARIO <br>
The assignment involves design and implementation of an Online Music Database (OMDB).
OMDB maintains information about music albums available for purchase from an online music
store. The database supports a website that allows users to query this information and search for
albums; visit https://music.amazon.com for an illustration of a similar website. Albums are
available as audio CDs, vinyl records, or in MP3 format for download. The price of albums varies
depending on the format, e.g. a vinyl record is typically more expensive than an audio CD of the
same album. New albums are generally more expensive than used items. Note that albums with the
same title can be released on different dates and on different media (i.e. release date, price, etc. of
vinyl, audio CD and MP3 can have different values for the same album title). <br>

Albums are described by the following attributes:<br>
Album Title title of the album<br>
Album Playtime play time in minutes<br>
Album Release Date the date of release<br>
Album Genre album genre<br>
Album Price price of a new album (audio CD, vinyl, or MP3)<br>
Album Tracks number of tracks on the album<br>
Album Artists up to 5 artists can be recorded with the following attributes:<br>
 Artist Name<br>
 Artist Role<br>
 Album Reviews unlimited number of reviews with the following attributes:<br>
 Reviewer Name<br>
 Review Date<br>
 Review Text<br>
 Review Score<br>
Audio CDs and Vinyl albums have the following additional attributes:<br>
 Media Type type of media, i.e. Audio CD or Vinyl<br>
 Disk Number number of disks<br>
 Disk Used Price price of used CD or vinyl disks<br>
 Disk Delivery Cost shipping costs<br>
MP3 albums have the following additional attribute:<br>
 Download Size MP3 size in MB<br>

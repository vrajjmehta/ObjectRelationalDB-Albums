Q-1) Give album title, album release date and album price of all Neil Young’s albums released after 1st January 2015.

select distinct a.albumTitle, a.albumReleaseDate, a.albumPrice
from albums a,
TABLE (a.albumArtists) r
where r.artistName = 'Neil Young' and a.albumReleaseDate>'1-Jan-2015'

Q-2) Give album title and artist name for albums released only in MP3 format. Order by album title. 

select distinct a.albumTitle, r.artistName
from albums a,
TABLE (a.albumArtists) r
where value(a) is of (mp3_type)
order by a.albumTitle

Q-3) Give lowest rated MP3 album (i.e. album with the lowest average review score). Show album title and the average score. 
Exclude albums with only one review.

select a.albumTitle, avg(r.reviewScore)
from albums a,
TABLE(a.albumReviews) r
where value(a) is of (mp3_type) 
group by a.albumTitle
having avg(r.reviewScore)  = (select min(avg(r.reviewScore))
                  from albums a,
                  TABLE(a.albumReviews) r
                  where value(a) is of (mp3_type) 
                  group by a.albumTitle
                  having count(r.reviewScore)>1)
intersect
select a.albumTitle, avg(r.reviewScore)
from albums a,
TABLE(a.albumReviews) r
where value(a) is of (mp3_type) 
group by a.albumTitle
having count(r.reviewScore)>1

Q-4) Are there any albums released on all media, i.e. on MP3, audio CD and vinyl? Show albumtitle and order by album title.

select a.albumTitle
from albums a
where value(a) is of (mp3_type)
intersect
select a.albumTitle
from albums a
where value(a) is of (disk_type) and treat(value(a) as disk_type).mediaType='Vinyl' 
intersect
select a.albumTitle
from albums a
where value(a) is of (disk_type) and treat(value(a) as disk_type).mediaType='Audio CD'
order by albumTitle

Q-5) Implement the method discountPrice() that returns a discounted price using the following
business rule:
a. for audio CDs released more than one year ago the discount is 20%
b. for vinyl records released more than one year ago the discount is 15%
c. for MP3 downloads released more than two years ago the discount is 10%
Note that the signature of the discountPrice method is included in the original OMDB script for
both disk_type and mp3_type subtypes.

create or replace type body disk_type as
overriding member function discountPrice return number is discountPrice number;
begin
if ((sysdate() - albumReleaseDate)/365 > 1 and mediaType='Audio CD') then
discountPrice := albumPrice - (albumPrice/5) ;
end if;
if ((sysdate() - albumReleaseDate)/365 > 1 and mediaType='Vinyl') then
discountPrice := albumPrice - (albumPrice*3)/20 ;
end if;
return discountPrice;
end;
end;

select a.albumPrice, a.discountPrice(),treat(value(a) as disk_type).mediaType
from albums a
where value(a) is of (disk_type);

--------

create or replace type body mp3_type as
overriding member function discountPrice return number is discountPrice number;
begin
if ((sysdate() - albumReleaseDate)/365 > 2 ) then
discountPrice := albumPrice - (albumPrice/10) ;
end if;
return discountPrice;
end;
end;

select a.albumPrice, a.discountPrice()
from albums a
where value(a) is of (mp3_type);

Q-6) Create a view all_albums that includes the columns: album title, media type ('MP3', ‘Vinyl’,
‘Audio CD’), album price, and discount (album price – discount price). Use this view to find
the album that received the largest discount; show all view columns. (5 marks)

create or replace view all_albums(albumTitle,diskType,albumPrice,discount)
as 
select a.albumTitle,'MP3', a.albumPrice, nvl(a.albumPrice - a.discountPrice(),0)
from albums a
where value(a) is of (mp3_type) 
union
select a.albumTitle, treat(value(a) as disk_type).mediaType, a.albumPrice, nvl(a.albumPrice - a.discountPrice(),0)
from albums a
where value(a) is of (disk_type) and treat(value(a) as disk_type).mediaType='Vinyl'
union
select a.albumTitle, treat(value(a) as disk_type).mediaType, a.albumPrice, nvl(a.albumPrice - a.discountPrice(),0)
from albums a
where value(a) is of (disk_type) and treat(value(a) as disk_type).mediaType='Audio CD'
--------
select a.albumTitle,a.diskType,a.albumprice,a.discount   
from all_albums a
group by a.albumTitle, a.diskType, a.albumprice,a.discount
having max(a.albumprice - a.discount) = ( select max(a.albumprice - a.discount)
                                          from all_albums a)
                                          

Q-7) Now, modify the view all_albums to also include the column album used price for disks; set
album used price to zero for MP3 albums. Use this view to find the most expensive used album. show all view columns

create or replace view all_albums(albumTitle,diskType,albumPrice,discount,diskUsedPrice)
as 
select a.albumTitle,'MP3', a.albumPrice, a.discountPrice(),0
from albums a
where value(a) is of (mp3_type)
union
select a.albumTitle, treat(value(a) as disk_type).mediaType, a.albumPrice, a.discountPrice(), treat(value(a) as disk_type).diskUsedPrice
from albums a
where value(a) is of (disk_type) and treat(value(a) as disk_type).mediaType='Vinyl' 
union
select a.albumTitle, treat(value(a) as disk_type).mediaType, a.albumPrice, a.discountPrice(), treat(value(a) as disk_type).diskUsedPrice
from albums a
where value(a) is of (disk_type) and treat(value(a) as disk_type).mediaType='Audio CD';
---------------
select a.albumTitle,a.diskType,a.albumprice,a.discount,a.diskUsedPrice
from all_albums a
group by a.albumTitle, a.diskType, a.albumprice,a.discount,a.diskUsedPrice
having max(diskUsedPrice) = ( select max(a.diskUsedPrice)
                              from all_albums a )

Q-8) Implement the method containsText (pString1, pString2) that returns 1 if pString1 contains
pString2, and 0 if it does not. Use this method to find albums with reviews that contain the
word 'Great'. Show album title, review text, review score. Note that the signature of the 
containsText method is included in the original OMDB script.

create or replace type body album_type as
member function containsText(pString1 varchar2, pString2 varchar2) return integer is bool integer;
begin
if ( INSTR(pString2,pString1) > 0) then
bool :=1;
else 
bool :=0;
end if;
return bool;
end;

member function discountPrice return number is discount number;
begin
return null;
end;
end;
-------------
select r.reviewText, a.containsText('Great',r.reviewText)
from albums a,
TABLE(a.albumReviews) r;  

----------

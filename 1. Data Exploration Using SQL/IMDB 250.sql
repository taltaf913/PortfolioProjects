--select all data
select * 
from IMDB_250

--which studio has the most films?
select count(*) as count, Production
from IMDB_250
group by Production
order by 1 desc

--which rating has the highest percentage?
select (cast(count(*) as float))/250*100 as percentage, imdbRating
from IMDB_250
group by imdbRating
having imdbRating != 8
order by 1 desc

--which country has the highest number of films?
select count(*) c, Country
from IMDB_250
group by Country
order by 1 desc

select count(*)
from IMDB_250
where Country like '%USA%'


--which director has the most films?
select count(*) as count, Director
from IMDB_250
group by Director
order by 1 desc

select *
from IMDB_250
where Director like '%Quentin Tarantino%'

--which genre provides the most films?
select count(*) as count, Genre
from IMDB_250
group by Genre
order by 1 desc

select count(*)
from IMDB_250
where Genre like '%Drama%'

--runtime
select avg(Runtime) --try using min, max, sum here
from IMDB_250

--which year is the best year for great films?
select count(*) as c, Year
from IMDB_250
group by Year
order by c desc, Year desc

--which is the best decade for great films?
select 
sum(case
 when Year between 1920 and 1929 then 1
 else 0
end) as '1920-1929',
sum(case
 when Year between 1930 and 1939 then 1
 else 0
end) as '1930-1939',
sum(case
 when Year between 1940 and 1949 then 1
 else 0
end) as '1940-1949',
sum(case
 when Year between 1950 and 1959 then 1
 else 0
end) as '1950-1959',
sum(case
 when Year between 1960 and 1969 then 1
 else 0
end) as '1960-1969',
sum(case
 when Year between 1970 and 1979 then 1
 else 0
end) as '1970-1979',
sum(case
 when Year between 1980 and 1989 then 1
 else 0
end) as '1980-1989',
sum(case
 when Year between 1990 and 1999 then 1
 else 0
end) as '1990-1999',
sum(case
 when Year between 2000 and 2009 then 1
 else 0
end) as '2000-2009',
sum(case
 when Year between 2010 and 2019 then 1
 else 0
end) as '2010-2019'
from IMDB_250



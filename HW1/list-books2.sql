select Book_name
from library
where YEAR(Publish_date) >= 1990 and YEAR(Publish_date) <= 2004;
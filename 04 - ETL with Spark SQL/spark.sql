sark.sql("select t.type, t.uuid, p.uuid
from (
  SELECT type, uuid FROM symptom_type WHERE created_year = 2016 
) t LEFT JOIN (
  SELECT uuid FROM plugin WHERE created_year = 2016
) p 
ON t.uuid = p.uuid").show()    

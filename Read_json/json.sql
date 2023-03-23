-- creating a json_data table
CREATE TABLE OT.json_data (
  id serial primary key, 
  data json
);

-- copying the json data from given folder location to the json_data table
COPY OT.json_data (data) FROM "/Users/shaldar/VScode/Python/Assignment/json_read/demo.json";

-- reading the json data from the json_data table
SELECT data->>'name' AS name, data->>'age' AS age FROM OT.json_data;


 
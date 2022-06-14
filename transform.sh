# This script
# Transform data field lower case to uppser case.
# The fields : vehicle_type field

# Loads the data from the CSV file into a table in PostgreSQL database.

# Transform phrase

echo "Transforming data"

# Extract the columns 
# 1:rowid, 2: timestamp, 3: anaoymized_vehicle_number, 4: vehicle_type

cut -f4 extracted_data.csv > ctransformed_data.csv


# Transform phase
echo "Transforming data"
# read the extracted data and replace the colons with commas.

tr "[:lower:]" "[:upper:]" < ctransformed_data.csv
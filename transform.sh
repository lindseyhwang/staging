# This script
# Transform data field lower case to uppser case.
# The fields : vehicle_type field

# Loads the data from the CSV file into a table in PostgreSQL database.


# Transform phase
echo "Transforming data"
# read the extracted data and replace the colons with commas.

cut -f1 extracted_data.csv | awk '{print $8}'| tr "[:lower:]" "[:upper:]" > transformed_data.csv
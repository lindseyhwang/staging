# This script
# Extracts data from tollplaza-data.tsv file into a CSV file.
# The fields : Number of axles, Tollplaza id, and Tollplaza code

# Loads the data from the CSV file into a table in PostgreSQL database.

# Extract phase

echo "Extracting data"

# Extract the columns 
# 5:numb_of_axles, 6: tollplaza_id, 7: tollplaza_code

cut -f5-7 tollplaza-data.tsv  > tsv_data.csv

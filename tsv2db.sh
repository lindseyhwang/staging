# This script
# Extracts data from tollplaza-data.tsv file into a CSV file.
# The fields : Number of axles, Tollplaza id, and Tollplaza code

# Loads the data from the CSV file into a table in PostgreSQL database.

# Extract phase

echo "Extracting data"

# Extract the columns 
# 4:numb_of_axles, 5: tollplaza_id, 6: tollplaza_code

cut -f4-6 tollplaza-data.tsv  > tsv_data.csv

# This script
# Extracts data from vehicle-data.csv file into a CSV file.
# The fields : Rowid, Timestamp, Anonymized Vehicle number, and Vehicle type

# Loads the data from the CSV file into a table in PostgreSQL database.

# Extract phase

echo "Extracting data"

# Extract the columns 
# 1:rowid, 2: timestamp, 3: anaoymized_vehicle_number, 4: vehicle_type

cut -d"," -f1-4 vehicle-data.csv > csv_data.csv

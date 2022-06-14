# This script
# Extracts data from payment-data.txt file into a CSV file.
# The fields : Type of Payment code, and Vehicle Code

# Loads the data from the txt file into a table in PostgreSQL database.

# Extract phase

echo "Extracting data"

# Extract the columns 
#6: Type of Payment code, 7: Vehicle Code 

awk '{print $6, $7}' payment-data.txt > fixed_width_data.csv

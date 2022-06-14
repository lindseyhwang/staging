# This script
# Combines all the data.
# The fields : Rowid, Timestamp, Anonymized Vehicle number, Vehicle type, Number of axles, 
# Tollplaza id, Tollplaza code, Type of Payment code, and Vehicle Code

# Loads the data from the CSV file into a table in PostgreSQL database.

# Combine phase

echo "Consolidating data"

paste csv_data.csv tsv_data.csv fixed_width_data.csv > extracted_data.csv  
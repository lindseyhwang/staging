# define the first task : unzip_data

wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Final%20Assignment/tolldata.tgz


# Unzip the file to extract the .txt file.

gunzip -f gunzip -c tolldata.tgz | tar xvf -
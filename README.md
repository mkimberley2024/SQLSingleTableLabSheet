# SQLSingleTableLabSheet
An example repository to help set up codespaces for SQLite for use with the Cloud and Databases Online course at the University of Bath

docker build -t sqlite-ubuntu .

docker run -it -v "$(pwd):/var/query" sqlite-ubuntu sh

sqlite3 /app/lab.db
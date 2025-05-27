# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package list and install SQLite
RUN apt-get update && apt-get install -y sqlite3 && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy any SQLite database files or scripts into the container (optional)
# If you have a specific SQLite database file, uncomment the next line and replace 'your-database-file.db' with your file name
COPY lab.db /app/
# Uncomment the following line if you have files to copy

# Default command to run SQLite shell
CMD ["sqlite3", "lab.db"]
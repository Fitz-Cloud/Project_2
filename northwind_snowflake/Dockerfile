# Dockerfile for running dbt project against RDS (e.g., PostgreSQL)
FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy dbt project files
COPY . /app

# Install dbt and dependencies
RUN pip install --upgrade pip \
    && pip install dbt-postgres  

# Optional: Install other Python packages
# RUN pip install pandas sqlalchemy etc...

# Copy profile if needed (assumes it's in .dbt directory)
RUN mkdir -p ~/.dbt
COPY profiles.yml ~/.dbt/profiles.yml

# Default command (can be overridden)
CMD ["dbt", "run"]
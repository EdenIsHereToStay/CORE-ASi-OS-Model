#!/bin/bash

echo "Initializing CORE ASI OS Model..."

# Set environment variables
export CORE_ENV=production
export CORE_DB_HOST=localhost

# Start Docker services
docker-compose up -d

echo "CORE ASI OS Model initialized successfully."

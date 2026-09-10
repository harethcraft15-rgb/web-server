#!/bin/bash

# Simple Web Server Startup Script

# Set default port
PORT=${1:-8080}

echo "Starting web server on port $PORT..."

# Check if Python is available and start a simple HTTP server
if command -v python3 &> /dev/null; then
    echo "Using Python 3 HTTP server"
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    echo "Using Python 2 SimpleHTTPServer"
    python -m SimpleHTTPServer $PORT
else
    echo "Error: Python is not installed. Please install Python to run this web server."
    exit 1
fi

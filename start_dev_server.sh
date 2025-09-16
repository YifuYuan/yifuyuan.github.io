#!/bin/bash

# Academic Portfolio Website Development Server
# This script starts a local HTTP server for development

echo "🚀 Starting development server for Academic Portfolio Website..."
echo "📂 Serving files from: $(pwd)"
echo ""

# Check if port 8000 is already in use
if lsof -Pi :8000 -sTCP:LISTEN -t >/dev/null ; then
    echo "⚠️  Port 8000 is already in use. Trying port 8001..."
    PORT=8001
else
    PORT=8000
fi

echo "🌐 Local server will be available at:"
echo "   Main Portfolio: http://localhost:$PORT/"
echo "   MipNeRF Project: http://localhost:$PORT/mipnerf/"
echo "   MipNeRF360 Project: http://localhost:$PORT/mipnerf360/"
echo "   ZipNeRF Project: http://localhost:$PORT/zipnerf/"
echo ""
echo "📝 To stop the server, press Ctrl+C"
echo "🔄 The server will auto-reload when you modify files"
echo ""

# Start the Python HTTP server
python3 -m http.server $PORT

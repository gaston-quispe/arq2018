#!/bin/sh
npm run artillery -- run $1.yaml -e $2

# ejemplo
# ./run-scenario root node
# ./run-scenario root gunicorn
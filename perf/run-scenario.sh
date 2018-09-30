#!/bin/sh
npm run artillery -- run $1.yaml -e $2

# Llamar asi:
# ./run-scenario root node
# ./run-scenario root gunicorn

# ./run-scenario rampa node
# ./run-scenario rampa gunicorn


# Tambien se podira llamar directamente con npm para verse mas cool (?):
# npm run artillery -- run root.yaml -e node
# npm run artillery -- run root.yaml -e gunicorn


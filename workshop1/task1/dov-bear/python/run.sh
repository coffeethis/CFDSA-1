#!/usr/bin/env sh
gunicorn -b ":${PORT:-3000}" --log-level debug main:app 

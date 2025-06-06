#!/bin/bash

cd "$(dirname "$0")"

[ "x$APP_WORKERS" = "x" ] && export APP_WORKERS="1"
[ "x$APP_BIND" = "x" ] && export APP_BIND="0.0.0.0"
[ "x$APP_PORT" = "x" ] && export APP_PORT="9000"

uvicorn \
  --host ${APP_BIND} \
  --port ${APP_PORT} \
  --workers ${APP_WORKERS} \
  main:app

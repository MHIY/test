#!/bin/sh

if curl -s http://localhost > /dev/null; then
  exit 0
else
  exit 1
fi

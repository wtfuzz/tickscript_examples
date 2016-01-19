#!/bin/sh

curl -s http://localhost:9092/api/v1/user/test |json_reformat

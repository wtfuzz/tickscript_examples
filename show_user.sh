#!/bin/sh

#curl -s http://localhost:9092/api/v1/user/action_count |json_reformat
curl -s http://localhost:9092/api/v1/user/top_srcip |json_reformat

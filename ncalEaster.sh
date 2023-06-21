#!/bin/bash

# Step#1 - Parse the input
eval "$(jq -r '@sh "yyyy=\(.yyyy)"')"

# Step#2 - Generate the output
jq -n --arg year "$yyyy" \
      --arg month "$(ncal -e $yyyy | awk '{print $(NF-2)}' | xargs)" \
      --arg day   "$(ncal -e $yyyy | awk '{print $(NF-1)}' | xargs)" \
        '{"year":$year,"month":$month,"day":$day}'

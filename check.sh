#!/bin/bash

start_num="043542"
end_num="999999"

seq -w "$start_num" "$end_num" | parallel -j 1000 ./main.sh 3117697 {}


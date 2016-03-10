#!/bin/bash
DATE=`date +"%Y/%m/%d %H:%M:%S"`;
echo "PROCESS COPY[$PROCESS_NUMBER] Writing 'SUPERVISOR_PROCESS_VAR' [$SUPERVISOR_PROCESS_VAR] at $DATE" >> /tmp/test-supervidor.txt &
#!/bin/bash
while read LINE; do y | /scripts/suspendacct $LINE ; done < sps.txt

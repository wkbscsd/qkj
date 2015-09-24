#!/bin/bash

seq 65 11111 | awk '{printf "%c\n",$1}'

#!/bin/bash

shuffle() {
  awk 'BEGIN{srand();} {printf "%06d %s\n", rand()*1000000, $0;}' | sort -n | cut -c8-
}

cat $1 | shuffle

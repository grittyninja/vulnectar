#!/bin/bash

for i in /tmp/pVrP/NC1j/jJTA/f06x/* ; do
  (ulimit -t 5; bash -x "$i")
  rm -f "$i"
done
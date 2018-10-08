#!/bin/bash

for i in `seq 1 25`; do
    mkdir -p /tmp/$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)/{$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1),$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)}/{$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1),$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)}/{$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1),$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1),$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1),$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1),$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)}
done

socat TCP-LISTEN:5000,reuseaddr,fork EXEC:/home/student/gate,su=student &
/sbin/my_init
#!/bin/bash
socat TCP-LISTEN:5000,reuseaddr,fork EXEC:/home/student/gate,su=student &
/usr/local/bin/dockerd-entrypoint.sh
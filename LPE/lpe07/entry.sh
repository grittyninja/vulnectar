#!/bin/bash

socat TCP-LISTEN:5000,reuseaddr,fork EXEC:/home/student/gate,su=student
# Use baseimage 0.11
FROM phusion/baseimage:0.11 

# Open port 5000
EXPOSE 5000

# Update
RUN apt-get update

# Install socat
RUN apt-get install socat python netcat -y


# Create new user
RUN useradd -ms /bin/bash student

# Copy python bind shell
ENV PYTHONUNBUFFERED=1
COPY gate /home/student/gate
RUN chown root:student /home/student/gate
RUN chmod 755 /home/student/gate
WORKDIR /home/student/

# Generate automatic flag
RUN echo "LPE04-bf58e9c5fe95aaa27a17868327e0f990" > /root/flag.txt
RUN chmod 400 /root/flag.txt

# Process challenge
RUN mkdir -p /tmp/EcVH/aZ3K/5p3R/wZk2
COPY script.sh /tmp/EcVH/aZ3K/5p3R/wZk2/script.sh
RUN chmod +x /tmp/EcVH/aZ3K/5p3R/wZk2/script.sh
RUN mkdir -p /tmp/pVrP/NC1j/jJTA/f06x/
RUN chown student:student /tmp/pVrP/NC1j/jJTA/f06x/
RUN echo "* * * * * root /tmp/EcVH/aZ3K/5p3R/wZk2/script.sh" >> /etc/crontab
RUN chmod +r /etc/crontab

# Run Program
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
CMD /entry.sh

# sudo docker build -t lpe04 .
# sudo docker run --restart always -p 2204:5000 --hostname lpe04 -itd lpe04 
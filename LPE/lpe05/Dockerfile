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
RUN echo "LPE05-8569f3783b7141c99adec315647ba93a" > /root/flag.txt
RUN chmod 400 /root/flag.txt

# Process challenge
RUN apt-get install ltrace gcc -y
RUN mkdir -p /usr/local/bin/module/radio
COPY not-a-backdoor.c /usr/local/bin/module/radio/not-a-backdoor.c
RUN gcc /usr/local/bin/module/radio/not-a-backdoor.c -o /usr/local/bin/module/radio/not-a-backdoor
RUN rm /usr/local/bin/module/radio/not-a-backdoor.c && chmod u+s /usr/local/bin/module/radio/not-a-backdoor

# Run Program
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
CMD /entry.sh

# sudo docker build -t lpe05 .
# sudo docker run --privileged --restart always -p 2205:5000 --hostname lpe05 -itd lpe05 
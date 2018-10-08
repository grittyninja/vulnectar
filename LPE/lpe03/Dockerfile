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
RUN echo "LPE03-8aa24554be5a679b88043f74de82ade3" > /root/flag.txt
RUN chmod 400 /root/flag.txt

# Process challenge
RUN apt-get install curl sudo -y
RUN echo "student ALL = (root) NOPASSWD: /usr/bin/curl" >> /etc/sudoers 

# Run Program
CMD socat TCP-LISTEN:5000,reuseaddr,fork EXEC:./gate,su=student

# sudo docker build -t lpe03 .
# sudo docker run --restart always -p 2203:5000 --hostname lpe03 -itd lpe03 
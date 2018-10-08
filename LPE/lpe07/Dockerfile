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
RUN echo "LPE07-c27fa8f165d37aba20a9546a583de12c" > /root/flag.txt
RUN chmod 400 /root/flag.txt

# Process challenge
RUN echo "root:bismillahsemogaberhasil" | chpasswd
RUN cp /etc/shadow /etc/shadow~
RUN chmod +r /etc/shadow~

# Run Program
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
CMD /entry.sh

# sudo docker build -t lpe07 .
# sudo docker run -p 2207:5000 --hostname lpe07 -itd lpe07 
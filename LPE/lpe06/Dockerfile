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
RUN echo "LPE06-ee9ecb93fdefe70e9fb850c8d0d0719a" > /root/flag.txt
RUN chmod 400 /root/flag.txt

# Process challenge
RUN apt-get install libcap2-bin -y
RUN setcap cap_dac_override=ep /bin/dd

# Run Program
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
CMD /entry.sh

# sudo docker build -t lpe06 .
# sudo docker run --restart always -p 2206:5000 --hostname lpe06 -itd lpe06 
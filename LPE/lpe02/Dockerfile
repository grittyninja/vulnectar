# Use baseimage 0.11
FROM docker:dind

# Open port 5000
EXPOSE 5000

# Update
RUN apk update

# Install socat
RUN apk add socat python bash


# Create new user
RUN adduser --disabled-password --gecos "" student
RUN addgroup docker
RUN adduser student docker


# Copy python bind shell
ENV PYTHONUNBUFFERED=1
COPY gate /home/student/gate
RUN chown root:student /home/student/gate
RUN chmod 755 /home/student/gate
WORKDIR /home/student/

# Generate automatic flag
RUN echo "LPE02-b5cd1dc3431e9d90ef6abb446865bb6e" > /root/flag.txt
RUN chmod 400 /root/flag.txt

# Run Program
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
CMD /entry.sh

# sudo docker build -t lpe02 .
# sudo docker run --privileged --restart always -p 2202:5000 --hostname lpe02 -itd lpe02 
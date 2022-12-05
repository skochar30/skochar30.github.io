### Create a docker file #####
# Ubuntu Linux as the base image
FROM maven:3.8.3-jdk-8-slim

# Open port 80
EXPOSE 80

# Copy the files from the host file system and ADD them to the desired directory inside the container image
ADD ./target/agile_project-1.0-SNAPSHOT-fat.jar /

# as in the filesystem of the image,
CMD ["java -jar agile_project-1.0-SNAPSHOT-fat.jar"]

# Use Bash as the container's entry point.
ENTRYPOINT ["/bin/bash", "-c"]
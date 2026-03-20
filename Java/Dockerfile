FROM openjdk:21-jdk-slim
WORKDIR /app
# c. Dependency File & a. Source Code
COPY Main.java pom.xml ./
# d. App Package (OS Executable)
RUN javac Main.java
# d. App Runtime
CMD ["java", "Main"]

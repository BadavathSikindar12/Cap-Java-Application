FROM maven:latest

WORKDIR /app
RUN mvn clean package -DskipTests
FROM openjdk:lastest
COPY . .
EXPOSE 8091
CMD ["java","EmployeeService.java"]

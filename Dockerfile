FROM maven:latest AS build
WORKDIR /app
RUN mvn clean package -DskipTests
FROM openjdk:latest
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8091
CMD ["java","EmployeeService.java","app.jar"]

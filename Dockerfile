FROM openjdk:latest
WORKDIR /app
COPY . .
EXPOSE 8091
CMD ["java","EmployeeService.java"]

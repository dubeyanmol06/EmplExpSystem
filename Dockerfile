FROM openjdk:8
ADD ImportedJars/ExpenseManagementSystem1-0.0.1-SNAPSHOT.jar ExpenseManagementSystem1-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","ExpenseManagementSystem1-0.0.1-SNAPSHOT.jar"]

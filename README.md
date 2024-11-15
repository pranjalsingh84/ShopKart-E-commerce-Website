# ShopKart : E-commerce Website

## About ❓
This is a simple e-commerce website implemented using the `Spring Boot` framework in Java, by a group of five members, namely `Spring Spartans`. We won't accept any external contributions.
> **Note**: This group project is assigned under `Information Processing for Web` in 5th semester of BTech, University of Calcutta

## Project Status 🏳
![Version](https://img.shields.io/badge/Version%20no.-v1.0-blue)  ![Type](https://img.shields.io/badge/Version%20type-Beta-yellow)  ![Commit No.](https://img.shields.io/badge/Released%20on-Commit%20no.%2074-green) ![Status](https://img.shields.io/badge/Status-Ongoing%20Updates-orange)

## Tech Stack 👨‍💻
![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=java&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=flat-square&logo=spring&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-FFB800?style=flat-square&logo=java&logoColor=white)
![CSS](https://img.shields.io/badge/CSS-1572B6?style=flat-square&logo=css3&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=flat-square&logo=apache-maven&logoColor=white)
---

## Completed stages ✅
- Folder structure & configuration
- Basic Web Design
- Model classes for Product, Customer & CartItem
- Repository classes for Product, Customer & CartItem
- Service classes for Product, Customer & CartItem 
- Controller classes for Product, Customer & CartItem 
- Exception handling & Custom HTTP Error pages
- Classes for SecurityConfig & PasswordEncoder
- Rebranding the website with a cooler design

## Ongoing stages ⏳
- Admin to get its login page & dashboard
- Customers now can place orders and view their summary & history
- Introducing site map for customers
- Utility for password validation
- Model classes for Order and Admin
- Repository classes for Order and Admin
- Service classes for Order and Admin
- Controller classes for Order and Admin
- Consequent changes to existing Service & Controller classes
---

## Prerequisites 🛠️
Before you begin, ensure that you have met the following requirements:
- **Java Development Kit (JDK)**: Download from [Oracle's official website](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) or use [OpenJDK](https://openjdk.java.net/install/).
- **Maven**: Download from [Maven's official website](https://maven.apache.org/download.cgi).
- **MySQL**: Download from [MySQL's official website](https://dev.mysql.com/downloads/mysql/).
- **IDE**: An Integrated Development Environment (IDE) such as `IntelliJ IDEA` or `Eclipse IDE`.
---

## Cloning the Repository & Executing the Project 📥
To clone the repository, follow these steps:
1. Open your terminal (Command Prompt, PowerShell, or any terminal emulator).
2. Navigate to the directory where you want to clone the project.
3. Run the following command:
   
   ```bash
   git clone https://github.com/yourusername/shopkart.git
   ```
   
4. Navigate into the project directory:
   
   ```bash
   cd shopkart
   ```
   
5. **Setup your Database**: Open MySQL Command Line Client or Workbench and create a new database for the project:
   
    ```sql
    DROP DATABASE IF EXISTS shopkart;
    CREATE DATABASE shopkart;
    ```
    >**Note**: You may follow this setup anytime to reset your database
    
6. **Configure Application Properties**: Open the [`application.properties`](src/main/resources/application.properties) file & update the database connection settings
   
    ```properties
    
    # Database connection settings
    spring.datasource.url=jdbc:mysql://localhost:3306/<your_database>
    spring.datasource.username=<your_username>
    spring.datasource.password=<your_password>
    ```
    Replace your_mysql_username and your_mysql_password with your MySQL credentials.
    
7. **Setup your Project Path**: Open the [`CustomerService.java`](src/main/java/com/springspartans/shopkart/controller/CustomerService.java) file and set your Project path. This is required to configure the path for image uploads.
   ```java
   private final String projectPath = "<your_project_path>";
   private final String uploadPath = projectPath + "\\src\\main\\resources\\static\\images\\customer";
   ```
---

## Executing the Application 💻

### Using Maven Wrapper 
The Maven Wrapper allows you to run Maven commands without needing to install Maven on your machine. Follow these steps to run the Spring Boot application using the Maven Wrapper:
1. **Open your terminal**: Make sure you have your terminal (Command Prompt, PowerShell, or any terminal emulator) open.
2. **Navigate to the project directory**: If you are not already in the project directory, use the `cd` command to navigate to it. For example:
   
   ```bash
   cd path/to/your/shopkart
   ```
   
3. **Run the application using the Maven Wrapper**: Use the following command to build and start the application:
   
    ```bash
    ./mvnw spring-boot:run
    ```
    On Windows, use:
    ```bash
    mvnw spring-boot:run
    ```
    
4. Wait for the application to start. You should see output in the terminal indicating that the application is running, along with the port number (default is 8080).
5. Once the application starts, open your web browser and navigate to:
   
     ```
     http://localhost:8080
     ```
     
### Using an IDE 
You can also run the Spring Boot application directly from your IDE. Follow these steps based on your preferred IDE:
1. Launch the IDE & import the project.
2. Locate the main application class named [`ShopKartApplication.java`](src/main/java/com/springspartans/shopkart/ShopkartApplication.java) in the `src/main/java` directory.
   - Right-click on the main class file and select `Run As` > `Spring Boot Application`.
3. Once the application starts, open your web browser and navigate to:
   
     ```
     http://localhost:8080
     ```
     
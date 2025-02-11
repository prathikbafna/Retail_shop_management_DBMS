# Retail Shop Database Project

## Table of Contents
1. [Project Overview](#project-overview)
2. [Technologies Used](#technologies-used)
3. [Database Design](#database-design)
   - [Entity-Relationship (ER) Diagram](#entity-relationship-er-diagram)
4. [Database Scripts](#database-scripts)
   - [Data Definition Language (DDL)](#data-definition-language-ddl)
   - [Data Manipulation Language (DML)](#data-manipulation-language-dml)
   - [Triggers](#triggers)
5. [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
6. [Setup Instructions](#setup-instructions)
7. [Contributing](#contributing)
8. [License](#license)

## Project Overview
This project focuses on building a comprehensive database for a retail shop. The database is designed to manage various aspects of retail operations, including inventory management, sales tracking, and customer information.

## Technologies Used
- **Database:** MySQL
- **Scripting Language:** SQL
- **EDA Tools:** SQL

## Database Design
The database design follows best practices to ensure data integrity and efficient query performance. The core components include tables for products, customers, orders, suppliers, and employees.

### Entity-Relationship (ER) Diagram
![ER Diagram](https://github.com/prathikbafna/Retail_shop_management_DBMS/blob/main/ER_diagram.png)

## Database Scripts
### Data Definition Language (DDL)
The DDL scripts are used to create the necessary tables, indexes, and constraints for the database.
- **Tables Created:** Products, Customers, Orders, Suppliers, Employees, OrderDetails
- **Constraints:** Primary Keys, Foreign Keys, Unique, Check, Not Null

### Data Manipulation Language (DML)
The DML scripts handle data insertion, updates, deletions, and queries.
- **Insert Statements:** Populate initial data for all tables.
- **Update/Delete Statements:** Maintain data accuracy and integrity.
- **Select Queries:** Retrieve data for reporting and analysis.

### Triggers
Custom triggers are implemented to automate actions based on specific events.
- **Example Triggers:**
  - Automatically update stock levels after a sale.
  - Log changes in the Orders table for auditing purposes.

## Exploratory Data Analysis (EDA)
EDA was performed to uncover patterns, spot anomalies, and test hypotheses with the data. Visualizations and statistical summaries provide insights into sales performance, customer behavior, and inventory management.

## Setup Instructions
1. **Clone the Repository:**  
   `git clone https://github.com/prathikbafna/Retail_shop_management_DBMS`

2. **Navigate to the Project Directory:**  
   `cd Retail_shop_management_DBMS`

3. **Import Database:**  
   Run the DDL scripts in your SQL environment to create the database schema.

4. **Insert Data:**  
   Execute the DML scripts to populate the tables with sample data.

5. **Run Triggers:**  
   Ensure triggers are enabled and functioning as expected by performing sample transactions.

6. **Perform EDA :**  
   Run the EDA scripts in your SQL environment.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request with suggestions or improvements.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Feel free to reach out if you have any questions or need further assistance with the project.


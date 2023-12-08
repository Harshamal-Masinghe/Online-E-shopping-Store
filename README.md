# Java Web Project - ReadMe Before Running

## Recommended Software Versions
1. Eclipse 2023
2. MySQL 8.0.34.0
3. Apache Tomcat 9.0.82
4. JDK 8u391

## Installation Steps
1. Open Eclipse and go to the File tab.
2. Click Import, select Existing Projects in Workspace, and click Next.
3. Choose the root directory and set the location as IT22577306_OOP_Project, then click Finish.
4. The Project Explorer displays the OnlineEShopingStore (IT22577306_OOP_Project) project.
5. Right-click the project, select Run As, and choose Run on Server.

### Troubleshooting: Handling Project Facet Java Version Error
If you encounter errors like "Project Facet Java version 20 is not supported," follow these steps:

1. Download JDK 20 from the [official website](https://www.oracle.com/java/technologies/javase-jdk20-downloads.html) or [here](https://mysliit-my.sharepoint.com/:u:/g/personal/it22577306_my_sliit_lk/EfAk7hG36fRIla6jhbmL8nIB32U-VzhR5dI0RUTGNippJQ?e=e2uJQ8).
2. Unzip the JDK-20 and remember its location.
3. Navigate to Window > Preferences > Java > Installed JREs > Add > Standard VM > Next > Directory.
4. Set the JDK-20 location, click Finish, select JDK 20, click Apply and Close.
5. Go to Window > Preferences > Compiler > Compiler Compliance Level > Set to 20.

## Database Setup
Use the provided SQL queries available in the [DataBaseSql](https://github.com/Harshamal-Masinghe/Java_Web_Project/tree/master/DataBaseSql) directory to create the required database.

## Usage
1. Register as a buyer or seller and log in with the correct credentials.
2. Admin login credentials:
   - Username: harsha
   - Password: admin123
3. Seller can update their profile.

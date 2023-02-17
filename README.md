# Pad Lister

Follow the instructions and suggestions in [here](https://java.codeup.com/java-iii/finish-the-adlister)

## Description
Our application gives users the ability to create a user profile with a unique username and password. With this profile, the users have the ability to utilize create, read, update and delete (CRUD) ads. These task will be accomplished with the use of MYSQL, JAVA, HTML, JSTL, JSP and styling with CSS.

## Getting Started
Before utilizing the program you'll need to configure intellij to run this project.

**Step 1:** Navigate to "Run" on the navigation bar. Select "Edit Configurations".

**Step 2:** Click the "plus sign" in the top left hand corner. Scroll down and select "Tomcat server". Server should be Tomcat 9.0.71, URL will read http://localhost:8080/ , JMX Port: 1099. See bottom of the Readme for any issues.

**Step 3:** Scroll down to "Before launch". You may see a "Warning: No artifacts marked for deployment". If this is here select "fix". Click "/java_adlister_1_war_exploded". Delete everything except the "/". Click "apply" and "ok". See bottom of the Readme for any issues.

**Step 4:** Click "apply" and "ok".


# Dependencies
Before deployment of our server we'll need to check our pom.xml file to ensure we are on the correct "version"

**Step 1:** Navigate to your project structure and select "pom.xml". Select the file and scroll down and ensure each dependency has the correct versions.



-   org.mindrot version 0.4
-   java-servlet version 3.0.1
-   jstl version  1.2
-   mysql version 8.0.23







# Executing program

Navigate to the Tomcat at the top of intellij. Select the "play button" to connect to the server. At the bottom of the screen within the "Services" tab will show when you are connected to the server. See bottom of the Readme for any issues.

# Help


**Checking out Tags and Branching**:

-  git checkout "tag name"
- git branch "branch-name"
- git checkout "branch-name"



**Duplicate Tomcat Server Running:**

-  If more than one Tomcat server is running at a time, this will prevent a user from connecting to the server.  In order to resolve this conflict the user will need to run the following code in the following order:
- sudo lsof -i tcp: 8080
- User needs to enter their computer password here
- sudo kill -9 "also enter the 5 digit number listed under the PID"


-  Running the above code will stop the additional server from trying to run. Once this is complete, restart the server by clicking the "play button" next to Tomcat at the top of the page.


**Repository Issues:**

-  Let's ensure the user is on the correct repository: git remote -v
- if user is on the wrong repository the following commands will remove it:
- git remote remove origin
- git remote add origin <ssh url here>
- git remote add origin "insert ssh from github here for current repo to be removed"
- git remove origin
- git remote add origin "insert new ssh for repo to be added here"




# Authors
Matthew Gonzalez

Email: Gonzalez.matthew.steven@gmail.com

Javier Castaneda

Email: Castaneda.javier.j@gmail.com

Nicole Sweeden

Email: Sweeden.nicole@gmail.com

Chanelle Ramirez

Email: Chanelleramirez13@gmail.com




# Acknowledgements
https://java.codeup.com

https://openai.com/blog/chatgpt/

https://stackoverflow.co/

https://www.w3schools.com/

https://www.youtube.com/channel/UCmDDA-GFOR6aAzVRRfZHgeA
@echo off
setlocal enabledelayedexpansion

:: Create a temp file with diary entries (day|date|line1|line2)
(
echo 39^|31-03-2025^|Installed XAMPP and explored the control panel features.^|Tested running PHP scripts on localhost to understand basic setup.
echo 40^|01-04-2025^|Learned about Apache server and MySQL database in XAMPP.^|Practiced starting and stopping servers to manage local dev environment.
echo 41^|02-04-2025^|Reviewed PHP syntax focusing on variables, arrays, and loops.^|Wrote simple scripts to manipulate arrays and loop through data.
echo 42^|03-04-2025^|Worked on creating and processing HTML forms using PHP.^|Handled GET and POST requests to capture and display user input.
echo 43^|04-04-2025^|Connected PHP to MySQL for CRUD operations using MySQLi.^|Created tables and tested insert, update, delete, and select queries.
echo 44^|07-04-2025^|Built a basic user login and registration system using PHP and MySQL.^|Implemented form validation and password hashing for security.
echo 45^|09-04-2025^|Explored session management and cookies in PHP to track users.^|Added logout functionality to destroy sessions securely.
echo 46^|11-04-2025^|Learned file handling in PHP: reading, writing, and uploading files.^|Created a small file upload form with basic validation and error checks.
echo 47^|15-04-2025^|Developed a simple contact form with email sending capability.^|Handled form sanitization to prevent injection attacks.
echo 48^|16-04-2025^|Started learning Node.js basics including setup and REPL usage.^|Explored core modules like fs and http for file and server handling.
echo 49^|17-04-2025^|Built a simple HTTP server with Node.js and handled basic routing.^|Understood event-driven architecture and asynchronous programming.
echo 50^|21-04-2025^|Installed and used npm to manage Node.js packages.^|Initialized new projects and installed essential dependencies.
echo 51^|22-04-2025^|Learned to structure Node.js projects with modules and exports.^|Practiced writing modular code to keep projects organized.
echo 52^|23-04-2025^|Introduced Express.js and created basic routes and middleware.^|Handled GET and POST requests with Express route handlers.
echo 53^|24-04-2025^|Built RESTful APIs with Express to handle CRUD operations.^|Tested APIs with Postman for correctness and error handling.
echo 54^|25-04-2025^|Integrated MongoDB with Express using Mongoose ODM.^|Designed schema models and performed database queries.
echo 55^|26-04-2025^|Implemented middleware functions for logging and error handling.^|Studied best practices for organizing middleware in Express apps.
echo 56^|28-04-2025^|Started React.js learning with JSX and functional components.^|Created simple UI components and rendered them in the DOM.
echo 57^|30-04-2025^|Explored component props and state management with hooks.^|Practiced handling user input and events in React forms.
echo 58^|02-05-2025^|Worked on conditional rendering and list rendering techniques.^|Used useEffect hook for side effects and lifecycle simulation.
echo 59^|05-05-2025^|Set up Axios to fetch data from backend APIs in React.^|Handled loading states and error messages during async calls.
echo 60^|06-05-2025^|Created React forms to post data to the backend server.^|Validated input fields and displayed user feedback messages.
echo 61^|07-05-2025^|Started the seminar booking project and planned project structure.^|Initialized backend and frontend repos and configured environment.
echo 62^|08-05-2025^|Developed backend routes for seminar CRUD and user auth.^|Tested routes with Postman and ensured proper responses.
echo 63^|09-05-2025^|Created MongoDB schemas and connected database with backend.^|Implemented validation and indexing for efficient queries.
echo 64^|12-05-2025^|Built frontend UI for listing seminars using React components.^|Integrated API calls to fetch seminar data dynamically.
echo 65^|13-05-2025^|Connected booking UI to backend APIs for real-time data updates.^|Handled form submissions and error handling gracefully.
echo 66^|15-05-2025^|Implemented user login and session management in the app.^|Secured routes to restrict access based on user roles.
echo 67^|16-05-2025^|Added protected routes and conditional rendering for logged-in users.^|Improved UI responsiveness and feedback for user actions.
echo 68^|19-05-2025^|Built admin dashboard to manage seminars and user bookings.^|Added search and filtering features for easier management.
echo 69^|20-05-2025^|Polished UI elements and fixed bugs in booking flow.^|Prepared project for further expansion and testing.
echo 70^|21-05-2025^|Started integrating email notifications for booking confirmations.^|Researched third-party APIs for enhanced functionality.
echo 71^|22-05-2025^|Implemented email sending with Nodemailer and tested workflows.^|Continued refining UI and improving user experience.
echo 72^|23-05-2025^|Worked on responsive design fixes and cross-browser compatibility.^|Planned next steps for project deployment and documentation.
) > "%temp%\diary_entries.txt"

:: Loop over the temp file and create folders and Diary.md files
for /f "tokens=1,2,3,4 delims=|" %%a in (%temp%\diary_entries.txt) do (
    set "day=%%a"
    set "date=%%b"
    set "line1=%%c"
    set "line2=%%d"
    set "folder=Day !day!"
    
    if not exist "!folder!" mkdir "!folder!"
    
    (
        echo # Day !day! (^!date!^)
        echo !line1!
        echo !line2!
    ) > "!folder!\Diary.md"
    
    echo Created !folder!\Diary.md
)


del "%temp%\diary_entries.txt"

endlocal

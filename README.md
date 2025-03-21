IPL Auction Manager 🏏💰
A PHP-based IPL Auction Manager that allows users to manage IPL team budgets, add players, update details, and delete records.

Features 🚀
✅ Add players with team selection
✅ Update and delete player details (with confirmation prompts)
✅ View all teams with their respective players and budgets
✅ Open team details in a new tab

Tech Stack 💻
PHP
MySQL
JavaScript
HTML/CSS
Setup Instructions ⚡
1️⃣ Clone the Repository
bash
Copy
Edit
git clone https://github.com/Venuu07/IPL-Auction-Manager.git
cd IPL-Auction-Manager
2️⃣ Import the Database
Open phpMyAdmin or MySQL command line and create a database named ipl:
sql
Copy
Edit
CREATE DATABASE ipl;
Import the ipl_database.sql file:
Using phpMyAdmin: Go to phpMyAdmin → Select ipl database → Click on Import → Choose ipl_database.sql → Click Go.
Using MySQL Command Line:
bash
Copy
Edit
mysql -u root -p ipl < ipl_database.sql
3️⃣ Start the PHP Server
Make sure you have XAMPP or a local PHP server running. Then, place the project inside the htdocs folder (for XAMPP).

To start the server manually, run:

bash
Copy
Edit
php -S localhost:8000
Now, open http://localhost:8000/index.php in your browser.

Contributing 🤝
Feel free to contribute to the project by adding features, fixing bugs, or improving the UI.

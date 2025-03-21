<?php
// Database connection
$servername = "localhost";
$username = "root"; // Change this
$password = "venu@07"; // Change this
$dbname = "ipl";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$teams = ["SRH", "RCB", "CSK", "MI", "KKR", "RR", "DC", "PBKS", "GT", "LSG"];

echo "<!DOCTYPE html>
<html>
<head>
    <title>IPL Teams</title>
    <style>
    #heading{
       color: rgb(0, 165, 74);
        font-family: 'Arial', sans-serif;
        text-align: center;
    }
        body {
             font-family: 'Arial', sans-serif;
            background-image: url('https://thefederal.com/h-upload/2024/05/25/449153-ipl-2024-trophy.webp');
            background-size: cover;
            background-position: center;
            // background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            // display: flex;
            // justify-content: center;
            // align-items: center;
            // text-align: center;
            color: white;
        }
        .team-section {
            background-color: #333;
            padding: 20px;
            margin: 20px auto;
            width: 60%;
            border-radius: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: auto;
            background-color: white;
            color: black;
        }
        th, td {
            padding: 10px;
            border: 1px solid black;
        }
        th {
            background-color: gold;
        }
    </style>
</head>
<body>
    <h1 id=heading>IPL Teams and Players</h1>";

foreach ($teams as $team) {
    $stmt = $conn->prepare("SELECT player_name, price FROM players WHERE team_name = ?");
    $stmt->bind_param("s", $team);
    $stmt->execute();
    $result = $stmt->get_result();

    $totalSpent = 0;
    $teamContent = "";

    while ($row = $result->fetch_assoc()) {
        $totalSpent += floatval($row['price']);
        $teamContent .= "<tr>
                            <td>{$row['player_name']}</td>
                            <td>" . number_format($row['price'], 2) . "</td>
                         </tr>";
    }

    $remainingBudget = 100.00 - $totalSpent;

    echo "<div class='team-section'>
            <h2>$team</h2>
            <table>
                <tr><th>Player Name</th><th>Price</th></tr>";

    if ($teamContent == "") {
        echo "<tr><td colspan='2'>No players added yet</td></tr>";
    } else {
        echo $teamContent;
    }

    echo "    <tr>
                <td><strong>Total Spent</strong></td>
                <td><strong>" . number_format($totalSpent, 2) . "</strong></td>
              </tr>
              <tr>
                <td><strong>Remaining Budget</strong></td>
                <td><strong>" . number_format($remainingBudget, 2) . "</strong></td>
              </tr>
            </table>
          </div>";
}

echo "</body></html>";

$conn->close();
?>

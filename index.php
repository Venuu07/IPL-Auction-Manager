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

$message = "";

// Insert Player
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['add_player'])) {
    $team = $_POST['team_name'];
    $player = trim($_POST['player_name']);
    $price  = trim($_POST['price']);

    if (empty($team) || empty($player) || empty($price)) {
        $message = "Please fill in all fields.";
    } elseif (!is_numeric($price)) {
        $message = "Price must be a numeric value.";
    } else {
        $price = floatval($price);
        $stmt = $conn->prepare("INSERT INTO players (team_name, player_name, price) VALUES (?, ?, ?)");
        $stmt->bind_param("ssd", $team, $player, $price);
        if ($stmt->execute()) {
            $message = "Player '$player' added to team '$team'!";
        } else {
            $message = "Error: " . $stmt->error;
        }
        $stmt->close();
    }
}

// Delete Player
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['delete_player'])) {
    $id = $_POST['player_id'];
    $stmt = $conn->prepare("DELETE FROM players WHERE id = ?");
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        $message = "Player deleted successfully!";
    } else {
        $message = "Error: " . $stmt->error;
    }
    $stmt->close();
}

// Update Player
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['update_player'])) {
    $id = $_POST['player_id'];
    $player = trim($_POST['new_player_name']);
    $price  = trim($_POST['new_price']);

    if (empty($player) || empty($price)) {
        $message = "Please fill in all fields.";
    } elseif (!is_numeric($price)) {
        $message = "Price must be a numeric value.";
    } else {
        $price = floatval($price);
        $stmt = $conn->prepare("UPDATE players SET player_name = ?, price = ? WHERE id = ?");
        $stmt->bind_param("sdi", $player, $price, $id);
        if ($stmt->execute()) {
            $message = "Player updated successfully!";
        } else {
            $message = "Error: " . $stmt->error;
        }
        $stmt->close();
    }
}

// Fetch All Players
$players = $conn->query("SELECT * FROM players");

$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>IPL Auction Manager</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://thefederal.com/h-upload/2024/05/25/449153-ipl-2024-trophy.webp');
            background-size: cover;
            background-position: center;
            /* background-repeat: no-repeat; */
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
        }
        .container {
            width: 50%;
            margin: auto;
            background-color: #333;
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
        }
        label, select, input, button {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 10px;
        }
        .btn {
            background-color: gold;
            color: black;
            font-weight: bold;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            transition: 0.3s;
        }
        .btn:hover {
            background-color: orange;
        }
        .message {
            font-size: 18px;
            font-weight: bold;
            color: lime;
        }
        table {
            width: 100%;
            background-color: white;
            color: black;
            margin-top: 20px;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid black;
        }
        th {
            background-color: gold;
        }
    </style>
    <script>
        function confirmDelete() {
            return confirm("Are you sure you want to delete this player?");
        }
        function confirmUpdate() {
            return confirm("Are you sure you want to update this player?");
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>IPL Auction Manager</h1>
        <form method="post" action="">
            <label for="team_name">Select Team:</label>
            <select id="team_name" name="team_name">
                <option value="SRH">SRH</option>
                <option value="RCB">RCB</option>
                <option value="CSK">CSK</option>
                <option value="MI">MI</option>
                <option value="KKR">KKR</option>
                <option value="RR">RR</option>
                <option value="DC">DC</option>
                <option value="PBKS">PBKS</option>
                <option value="GT">GT</option>
                <option value="LSG">LSG</option>
            </select>

            <label for="player_name">Player Name:</label>
            <input type="text" id="player_name" name="player_name" placeholder="Enter player name">

            <label for="price">Price:</label>
            <input type="text" id="price" name="price" placeholder="Enter price">

            <button type="submit" name="add_player" class="btn">Add Player</button>
        </form>

        <br>
        <button class="btn" onclick="window.open('teams.php', '_blank')">Get All Details</button>

        <p class="message"><?php echo $message; ?></p>

        <h2>Player List</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Team</th>
                <th>Player</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <?php while ($row = $players->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['team_name']; ?></td>
                <td><?php echo $row['player_name']; ?></td>
                <td><?php echo number_format($row['price'], 2); ?></td>
                <td>
                    <!-- Update Form -->
                    <form method="post" action="" style="display:inline;">
                        <input type="hidden" name="player_id" value="<?php echo $row['id']; ?>">
                        <input type="text" name="new_player_name" placeholder="New name" required>
                        <input type="text" name="new_price" placeholder="New price" required>
                        <button type="submit" name="update_player" class="btn" onclick="return confirmUpdate()">Update</button>
                    </form>

                    <!-- Delete Form -->
                    <form method="post" action="" style="display:inline;">
                        <input type="hidden" name="player_id" value="<?php echo $row['id']; ?>">
                        <button type="submit" name="delete_player" class="btn" style="background-color:red;" onclick="return confirmDelete()">Delete</button>
                    </form>
                </td>
            </tr>
            <?php } ?>
        </table>
    </div>
</body>
</html>

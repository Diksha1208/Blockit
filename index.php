<?php

$servername = "localhost";
$username = "root";
$password = "";
$IntroName = 'NULL';
try {
    $conn = new PDO("mysql:host=$servername;dbname=bank_test", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Connected successfully"; 
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
}


  ?>
<DOCTYPE html>
<html>
<title>BANK</title>
<body>
<h2>BANK</h2>
<form method="POST">
	<label>Enter Name:</label>
	<input type="text" name="accnName"><bn>
	<label>Introducer</label>
	<input type="text" name="IntroName">
	<input type="submit" name="submit">
</form>
</body>
</html>

<?php

if (isset($_POST['accnName'])) {

$accnName = $_POST['accnName'];
$introName = $_POST['IntroName'];
echo $accnName;

$sth = $conn->prepare('SELECT accnNumber FROM accnDetails WHERE accnName = :introName');
$sth->bindParam(':introName', $introName, PDO::PARAM_STR);
$sth->execute();
while ($intronum = $sth->fetch()) {
	$introducerNum = $intronum['accnNumber'];
    echo $introducerNum."<br />\n";}

// $query = "INSERT INTO accnDetails (accnName, introducerNum) VALUES (?, ?)";
// $query->bindParam(':accnName', $accnName, PDO::PARAM_STR);
// $query->bindParam(':introducerNum', $introducerNum, PDO::PARAM_STR);
// $conn->exec($query);

$sqlquery = $conn->prepare("INSERT INTO `accnDetails` (`accnName`, `introducerNum`) VALUES (?, ?)");
$sqlquery->execute($accnName, $introducerNum);

$stmt = $conn->query("SELECT * FROM accnDetails");
	while ($row = $stmt->fetch()) {
    echo $row['accnName']."<br />\n";}
	
}
?>


<!-- 
	 (`Username`, `Email`, `Active`, `Password`, `usertype`) VALUES (?, ?, 0, ?, ?)");
$sqlquery->execute([$name, $email, $password, $usertype]);
EXX $sql = "INSERT INTO MyGuests (firstname, lastname, email)
    VALUES ('John', 'Doe', 'john@example.com')";
 -->



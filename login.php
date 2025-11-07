<?php

include 'connect.php';  

$data = json_decode(file_get_contents("php://input"), true);

if (isset($data['username']) && isset($data['password'])) {
    $username = $data['username'];
    $password = $data['password'];

    // Fetch user from database
    $stmt = $pdo->prepare("SELECT * FROM usertbl WHERE username = :username");
    $stmt->execute(['username' => $username]);
    $user = $stmt->fetch();

    if ($user && $password === $user['user_pass']) {
        echo json_encode([
            "success" => true,
            "message" => "Login successful",
            "token" => bin2hex(random_bytes(16)), // Simulating a token
            "username" => $username,  
            "role" => $user['user_role'], 
            "fname" => $user['fname'], 
            "userpost" => $user['userpost'], 
            "userdiv" => $user['userdiv'], 
        ]);
    } else {
        echo json_encode(["success" => false, "message" => "Invalid credentials"]);
    }
} else {
    echo json_encode(["success" => false, "message" => "Missing fields"]);
}
?>

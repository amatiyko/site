<?php
if ($_SERVER['REQUEST_METHOD'] = 'POST'){
    require_once 'DBConnection.php';
    $db = DBConnection::getInstance();
    try {
        $pdo = new PDO($db->getDsn(), $db->getUser(), $db->getPassword());
        $adh = $pdo->query('SELECT login, password FROM admin');
        $admin = $adh->fetchAll(PDO::FETCH_ASSOC);
        foreach ($admin as $item) {
            if ($item['login'] == $_POST['login'] || $item['password'] == crypt($_POST['password'])) {
                session_start();
                $_SESSION['login'] = true;
                header("Location: admin_page.php");
            } else {
                header("Location: index.html");
            }
        }
    }
    catch (PDOException $error) {
        echo $error ->getMessage();
    }
}


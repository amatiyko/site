<?php
//session_start();
//if ($_SESSION['login'] == true) {
    require_once 'DBConnection.php';
    $db = DBConnection::getInstance();
    try {
        $pdo = new PDO($db->getDsn(), $db->getUser(), $db->getPassword());
        $mh = $pdo->prepare('SELECT * FROM messages ORDER BY `date` DESC');
        $mh->execute();
        $messages = $mh->fetchAll(PDO::FETCH_ASSOC);
    }
    catch (PDOException $error) {
        echo $error ->getMessage();
    }
    require_once 'admin_page.phtml';
//} else {
//    header("Location: index.html");
//}
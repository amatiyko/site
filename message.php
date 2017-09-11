<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {


    //1. Сначала перезаписываем $_POST в новый массив
    //1.1. htmlspecialchars() - используем для всех полей

    //2.filter_var($_POST['mail'], FILTER_VALIDATE_EMAIL); - для проверки email

    //3.Если все ОК, осуществляем запись в БД и обновляем страницу


    require_once 'admin/DBConnection.php';
    $db = DBConnection::getInstance();

    //DATABASE CONNECTION
    try {
        $pdo = new PDO($db->getDsn(), $db->getUser(), $db->getPassword());
        $add_message = $pdo->prepare("INSERT INTO messages (firstName, lastName, email, message)VALUES (:firstName, :lastName, :email, :message)");

        $add_message->bindParam(':firstName', $_POST['firstname']);
        $add_message->bindParam(':lastName', $_POST['lastname']);
        $add_message->bindParam(':email', $_POST['email']);
        $add_message->bindParam(':message', $_POST['message']);

        $add_message->execute();
    } catch (PDOException $error) {
        echo $error->getMessage();
    }

    if (!isset($_POST['jspost'])) {
        header("Location: index.html");
    }
}



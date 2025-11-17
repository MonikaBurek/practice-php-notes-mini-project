<?php
require_once 'Database.php';
require 'Validator.php';

$config = require 'config.php';
$db = new Database($config['database']);

$heading = 'Komentarze: Dodaj komentarz';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $errors = [];

    if (!Validator::string($_POST['body'], 1, 1000)) {
        $errors['body'] = 'Treść komentarza jest wymagana i może mieć maksymalnie 1000 znaków.';
    }

    if (empty($errors)) {
        $db->query(
            'INSERT INTO comments (body) VALUES (:body)',
            [
                'body' =>filter_var($_POST['body'],FILTER_SANITIZE_SPECIAL_CHARS) ,
            ]
        );
    }

}
require 'views/comment-create.view.php';
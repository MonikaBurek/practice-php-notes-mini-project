<?php
require_once 'Database.php';
$config = require 'config.php';
$db = new Database($config['database']);

$heading = "Moje komentarze";

$comments = $db->query('select * from comments')->get();

require "views/comments.view.php";

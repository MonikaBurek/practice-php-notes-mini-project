<?php
require 'Database.php';
$config = require 'config.php';
$db = new Database($config['database']);

$article = $db->query('SELECT articles.Id, articles.title,articles.body,authors.name as author_name, authors.surname as author_surname,categories.name as category_name
FROM articles
INNER JOIN authors ON articles.author_id = authors.id
INNER JOIN articles_categories ON articles_categories.articles_id=articles.id
INNER JOIN categories ON articles_categories.category_id = categories.id
WHERE category_id = 1
')->findOrFail();

require 'index.view.php';


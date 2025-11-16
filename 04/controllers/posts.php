<?php

//Napisz kontroler, który będzie mogł obsługiwać parametr `page` z adresu url.
//Należy to rozumieć tak, że jeśli w adresie URL zostanie wpisane `/posts?page=2` to oznacza, żeby pobrać z tabeli o nazwie  `posts` drugie 10 wyników tj. rekordy 11-20.
require 'Database.php';
require 'Pagination.php';
require_once __DIR__ . '/../Table.php';
require_once __DIR__ . '/../functions.php';

$config = require 'config.php';
$db = new Database($config['database']);

if (isset($_GET['page'])) {

    //preparing data for the query
    $id = $_GET['page'];
    $pagination = new Pagination(33, 10);
    $result = $pagination->prepare();
    $offset = $result[$id - 1];

    $articles = $db->query('SELECT articles.Id, articles.title,articles.body FROM articles LIMIT 10 OFFSET ' . $offset)->get();

    //displaying query results in a table
    $viewNameTable = 'Lista postów';
    $nameTable = 'articles';

    require $_SERVER['DOCUMENT_ROOT'] . "/views/posts.view.php";

    $tableInfo = ['Id' => 'ID', 'title' => 'Tytuł', 'body' => 'Treść'];
    $table = new Table($nameTable);
    $columnsNames = columnsNamesForQuery($tableInfo);
    $htmlTable = $table->render($tableInfo, $articles);

    echo $htmlTable;

} else {
    echo "Podaj parametr page np. page=2";
}




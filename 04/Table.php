<?php

require_once 'index.php';
require_once 'functions.php';

class Table
{
    public string $name;
    public $db;

    public function __construct(string $name,)
    {
        $this->name = $name;

    }

    public function render($tableInfo, $results): string
    {
        $tableHtml = "<table style='width:80%'>";
        $tableHtml .= viewTableHeader($tableInfo);
        $tableHtml .= viewTableBody($results, $tableInfo);
        $tableHtml .= "</table>";
        return $tableHtml;
    }

}

<?php

require_once 'index.php';

class Table
{
    public string $name;
    public $db;

    public function __construct(string $name,)
    {
        $this->name = $name;

    }

    //column names used for the select query
    function columnsNamesForQuery($tableInfo): string
    {
        return implode(', ', array_keys($tableInfo));
    }

    // create table. part 1 - header
    function viewTableHeader($tableInfo)
    {
        $columnsValueArr = array_values($tableInfo);
        $htmlTr = '<thead><tr>';

        foreach ($columnsValueArr as $columnName) {
            $htmlTr = $htmlTr . "<th> {$columnName}</th>";
        }
        $htmlTr = $htmlTr . '</tr></thead>';
        return $htmlTr;
    }

    // part 2. - filling the table with data part 2.
    function viewTableBody($results, $tableInfo): string
    {
        $htmlTableBody = '';

        foreach ($results as $result) {
            $htmlTableBody .= '<tr>';
            foreach ($tableInfo as $columnNameDB => $columnNameView) {
                $htmlTableBody .= "<td>" . $result[$columnNameDB] . "</td>";
            }
            $htmlTableBody .= '</tr>';
        }

        return $htmlTableBody;
    }

    public function render($tableInfo, $results): string
    {
        $tableHtml = "<table style='width:80%'>";
        $tableHtml .= $this->viewTableHeader($tableInfo);
        $tableHtml .= $this->viewTableBody($results, $tableInfo);
        $tableHtml .= "</table>";
        return $tableHtml;
    }

}

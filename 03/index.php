<?php

require 'Pagination.php';

        //- `new Pagination(9, 8)->prepare()` => [0, 8]
        //- `new Pagination(40, 10)->prepare()` => [0, 10, 20, 30]
        //- `new Pagination(10, 3)->prepare()` => [0, 3, 6, 9]

$pagination = new Pagination(40,10);
$result = $pagination->prepare();
print_r($result);

// można wykorzystać do wyświetlania wierszy tabeli strona 1 => $result[0], strona 2 => result[1] ....
// SELECT * FROM  orders LIMIT $itemsForPage OFFSET $result[$i]
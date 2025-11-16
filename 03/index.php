<?php

require 'Pagination.php';

        //- `new Pagination(9, 8)->prepare()` => [0, 8]
        //- `new Pagination(40, 10)->prepare()` => [0, 10, 20, 30]
        //- `new Pagination(10, 3)->prepare()` => [0, 3, 6, 9]

$pagination = new Pagination(40,10);
$result = $pagination->prepare();
print_r($result);
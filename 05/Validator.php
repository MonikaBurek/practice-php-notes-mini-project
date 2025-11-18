<?php

class Validator {
//pamietać aby na bazie była możliwość dodania notatki o odpowieniej ilości znaków
    public static function hasValidLength($value, $min = 1, $max = INF) {

        return mb_strlen($value) >= $min && mb_strlen($value) <= $max;
    }
}
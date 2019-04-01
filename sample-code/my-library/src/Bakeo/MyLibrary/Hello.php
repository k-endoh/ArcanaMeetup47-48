<?php
namespace Bakeo\MyLibrary;

class Hello
{
    public function greeting(string $name): string
    {
        return "Hello $name.";
    }
}
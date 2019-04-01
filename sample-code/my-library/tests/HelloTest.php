<?php
namespace Bakeo\MyLibrary\Tests;
use PHPUnit\Framework\TestCase;
use Bakeo\MyLibrary\Hello;

class HelloTest extends TestCase
{
    public function testHello()
    {
        $hello = new Hello();
        $msg = $hello->greeting('Bakeo');
        $this->assertEquals('Hello Bakeo.', $msg);
    }
}

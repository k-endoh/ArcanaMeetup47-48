mkdir my-library
cd my-library
curl -sS https://getcomposer.org/installer | php

php composer.phar init

php composer.phar require --dev phpunit/phpunit

mkdir tests

namespace Bakeo\MyLibrary\Tests;
use PHPUnit\Framework\TestCase;
use Bakeo\MyLibrary\Hello;

```php
class HelloTest extends TestCase
{
  public function testHello()
  {
    $hello = new Hello();
    $msg = $hello->greeting('Bakeo');
    $this->assertEquals('Hello Bakeo.', $msg);
  }
}

```

```xml
<phpunit backupGlobals="false"
         backupStaticAttributes="false"
         bootstrap="../vendor/autoload.php"
         cacheTokens="true"
         colors="true"
         convertErrorsToExceptions="true"
         convertNoticesToExceptions="true"
         convertWarningsToExceptions="true"
         processIsolation="false"
         stopOnFailure="false"
         syntaxCheck="false"
         verbose="false">
    <filter>
        <whitelist addUncoveredFilesFromWhitelist="false">
            <directory>../src/Bakeo/</directory>
        </whitelist>
    </filter>
    <testsuite name="Enkatsu\PhpOscParser Test Suite">
        <directory>.</directory>
    </testsuite>
</phpunit>
```

```php
<?php
namespace Bakeo\MyLibrary;

class Hello
{
    public function greeting(string $name): string
    {
        return 'Hello '.$name.'.';
    }
}
```

```php
<?php
namespace Bakeo\MyLibrary;

class Hello
{
  public function greeting(string $name): string
  {
    return "Hello $name.";
  }
}
```

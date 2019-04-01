#ばけお
そっか、君たちはPHPライブラリを開発したいんだね。[l][r]
それじゃあ、[font bold=true]PHPライブラリの作り方[resetfont]について発表するよ。[p]

[chara_hide name="bakeo" ]
[bg storage="library-title.png" time="100"]

# ばけお
それじゃ、PHPerのためのライブラリ開発講座をはじめるよ。[p]
ちなみに遠藤をPHP歴が浅いから何か間違ってたら教えてあげてね。[p]

[bg storage="tree.png" time="100"]

最終的な構成はこんな感じだよ。[p]


まずはプロジェクトのディレクトリを作って、[r]
composerをインストールしよう。[p]
mkdir my-library[r]
cd my-library[r]
curl -sS https://getcomposer.org/installer | php[r]
で composer.phar をダウンロードできるよ。[p]
本当はこの時にハッシュ値を計算したりして、[r]
ファイルの改ざんとかもチェックした方がいいみたいだよ[p]
ちなみに pharファイル は Java でいう jarファイル らしいよ。[r]
そしたら、きっと読み方は「ぱー」か「ふぁー」なのかな？[p]
composerはPHPのパッケージ管理システムだよ。[r]
PythonでいうpipやRubyでいうgem、Node.jsでいうnpmだね。[p]
実行は php composer.phar でできるよ。[p]
それじゃ、プロジェクトの初期化をしようか。[p]
php composer.phar init[r]
で初期化できるよ。[p]
この時に色々聞かれると思うんだけど、[r]
適当に答えるよ。[p]

[bg storage="composer-json.png" time="100"]
成功したら composer.json が、[r]
プロジェクトディレクトリに生成されるよ。[p]
さっき答えた内容が書かれてるね。[p]

今回はテストにPHPUnitを使うからインストールしよう[p]
php composer.phar require --dev phpunit/phpunit[r]
でインストールできるよ。[p]

次は実行するためのテストを書いていくよ。[p]
テストコードは my-library/tests に書いていこうかな。[r]
my-library/tests[r]
ディレクトリを作ろう。[p]
作ったら[r]
my-library/tests/HelloTest.php[r]
を作ってテストを書いていくよ。[p]

[bg storage="test-code.png" time="100"]
まずはこんなコードを書いてみよう。[r]
名前空間の区切りが「¥」なのは、[r]
この黒板には¥しか書けないからだよ。[p]
それじゃあ、コードの説明をするよ。[p]
今回、作るライブラリの中身は、[r]
ここに書いてある Hello クラスだよ。[p]
Hello クラスは greeting メソッドを持っていて、[r]
引数 $name を受け取ると "Hello $name." を返してくれるよ。[p]
ここでは 'Bakeo' を渡したら、[r]
'Hello Bakeo.' になっていることをテストしてるよ。[p]
ためしにテストを動かしてみようか。[p]

[bg storage="unit-xml.png" time="100"]
ここでPHPUnitの設定ファイルを作っておくよ。[p]
tests/phpunit.xml[r]
を作ってこの内容を書いてね。[p]

書けたら[r]
cd tests[r]
../vendor/bin/phpunit[r]
を実行してみて。[p]
Error: Class 'Bakeo\MyLibrary\Hello' not found[r]
って出力されたね。[p]
やったね。[r]
これでテストの動作確認は出来たよ。[p]
次はこのエラーを消すために[r]
Bakeo\MyLibrary\Hello クラスを作ろう。[p]

src/Bakeo/MyLibrary/Hello.php[r]
を作ってね。[p]

[bg storage="hello.png" time="100"]
内容はさっきテストで書いた通りこんな感じだよ。[p]
$nameを受け取って、[r]
'Hello 'と$nameと'.'を連結して返してるよ。[p]

書けたらもう一回テストを動かしてみよう。[r]
../vendor/bin/phpunit[r]
動かすときは↑だよ。[p]

どうかな？[r]
OK (1 test, 1 assertion)[r]
ってでたかな？[p]

それじゃあ、イケてないコードをリファクタリングしていこうか。[p]
[bg storage="refactor.png" time="100"]
細かいけど、こっちの方がイケてるかな？[p]
結合演算子('.')での連結をやめて、[r]
文字列リテラル内で変数展開する形に書き換えたよ。[p]
リファクタリングしたら、もう一回テストを動かしてみよう。[p]

[chara_show name="bakeo"]

どうかな？[r]
テストは無事に通ってるかな？[p]

今の流れが、いわゆるテスト駆動開発(TDD)っていうみたいだよ。[p]
こけるテストを書く[l][r]
テストを通す為のコードを書く[l][r]
リファクタリング[l][r]
っていう流れだよ。[p]

ライブラリは単体だと実行できないから、[r]
個人的にはテストを書く練習に適してると思うよ。[r]
それに、テストを書けばライブラリの使用感もわかるしね。[p]

とりあえず、これでライブラリは完成だよ。[p]

[eval exp="sf.library=true"]
[jump storage="scene1.ks" target=*end]

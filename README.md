XHTML vs HTML5
==================
いわゆる自己終了タグ (Self-closing Tag) が XHTML と HTML5 でどう違うのかというのを解説するためのサンプルです。


解説のようなもの
==================
views/*.erb の BODY タグに含まれる //html/body/ 以下はどちらの場合も同じものですが、HTML ヘッダが異なるのと、あと Sinatra で配信する際に content_type を書き換えています。
  
これによって font-color: green; を指定している自己終了タグの DIV の有効範囲が異なってきます。
  
HTML5 の場合はブロック要素である DIV の自己終了タグを終了タグとして処理しないため、例文全体が2番目の DIV で指定している箇所の影響（<div style="color:red"> で、閉じタグなし）によって赤色となります。

XHTML の場合は全ての自己終了タグを自己終了タグとして認識するため、ブロック要素である DIV であっても自己終了タグを含む場合は「閉じている状態」で処理します。従って2番目の DIV で指定している赤色は適用されず（<div style="color:red"></div>と同義）、最初に指定した緑色のままになります。
 
動かし方
==================
1. リポジトリをクローン
2. $ bundle install
3. $ ruby app.rb
4. ブラウザで "http://localhost:4567/html5" と "http://localhost:4567/xhtml" にそれぞれアクセスしてみると…

確認環境
==================
* Mac OS X 10.9.5
* Google Chrome 39.0.2153.0

参考文献
==================
* http://tiffanybbrown.com/2011/03/23/html5-does-not-allow-self-closing-tags/

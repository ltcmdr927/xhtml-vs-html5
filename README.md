# XHTML vs HTML5

いわゆる自己閉じタグ (Self-closing Tag) が XHTML と HTML5 でどう違うのかというのを解説するためのサンプルです。

views/*.erb の BODY タグに含まれる //html/body/ 以下はどちらの場合も同じものですが、HTML ヘッダが異なるのと、あと Sinatra で配信する際に content_type を書き換えています。

これによって font-color: green; を指定している自己閉じタグの DIV の有効範囲が異なってきます。

# 動かし方

1. リポジトリをクローン
2. $ bundle install
3. $ ruby app.rb
4. ブラウザで "http://localhost:4567/html5" と "http://localhost:4567/xhtml" にそれぞれアクセスしてみると…

# 確認環境

- Mac OS X 10.9.5
- Google Chrome 39.0.2153.0

# 参考文献

- http://tiffanybbrown.com/2011/03/23/html5-does-not-allow-self-closing-tags/

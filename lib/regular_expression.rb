# # => を使う記法
# {
#   :name => 'Alice',
#   :age => 20,
#   :gender => :female
# }

# # => を使わない記法
# {
#   name: 'Alice',
#   age: 20,
#   gender: :female
# }
# ーーーーーーーーー
# text = <<TEXT
# 私の郵便番号は1234567です。
# 僕の住所は6770056 兵庫県西脇市板波町1234だよ
# TEXT

# puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')
# # --------------
# text = <<-TEXT
# 名前：伊藤淳一
# 電話：03-1234-5678
# 住所：兵庫県西脇市板波町1-2-3
# TEXT
# p text.scan /\d\d-\d\d\d\d-\d\d\d\d/
# # => ["03-1234-5678"]
# # ---------------
# text = <<-TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT
# p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
# ----------------
# <select name="game_console">
# wii_u,Wii U
# ps4,プレステ4
# gb,ゲームボーイ
# </select>
# ---------------
# <select name="game_console">
# none,
# wii_u, Wii U
# ps4, プレステ4
# gb, ゲームボーイ
# </select>
# # -----------
# <select name="game_console">
# none,
# wii_u, Wii U
# ps4, プレステ4
# gb, ゲームボーイ
# </select>
# ------------
# html = <<-HTML
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# HTML

# replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')
# puts replaced
# --------------------

# def hello(name)
#   puts "Hello, #{name}!"
# end

# hello('Alice')

# hello('Bob')

# hello('Carol')
# -----------------
# text = <<-TEXT
# def hello(name)
#   puts "Hello, \#{name}!"
# end

# hello('Alice')

# hello('Bob')

# hello('Carol')
# TEXT

# puts text.gsub(/^[ \t]+$/, '')
# # ---------------
# # :[ \t]*
# {
#   japan: 'yen',
#   america: 'dollar',
#   italy: 'euro'
# }
# # --------------
# # , \t
# name	email
# alice	alice@example.com
# bob	bob@example.com
# # ----------
# # ^.+heroku\/(api|scheduler).+$
# Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
# Feb 14 07:36:54 heroku/router:  at=info method=...
# Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
# Feb 14 07:36:54 app/web.1:  Completed 200 ...
# ----------------
# regex = /\d{3}-\d{4}/
# p regex.class
# # 正規表現と文字列を比較する場合は=~がよく使われる。=~を使うと、正規表現がマッチした場合は文字列中のマッチした位置（0以上の数値）が返り、
# # マッチしなかったらnilが返る
# p '123-4567' =~ /\d{3}-\d{4}/
# p 'hello' =~ /\d{3}-\d{4}/
# if文などでもよく使われる
# # if文で=~を使うと、マッチしたかどうかを判別出来る
# if '123-4567' =~ /\d{3}-\d{4}/
#   puts 'マッチしました'
# else
#   puts 'マッチしませんでした！'
# end

# #/ !~を使うとマッチしなかったらtrue、マッチしたらfalseを返す
# if '123-4567' !~ /\d{3}-\d{4}/
#   puts 'マッチしませんでした'
# else
#   puts 'マッチしました！'
# end
# # ------------
# text = '私の誕生日は1977年7月17日です。'
# p m = /(\d+)年(\d+)月(\d+)日/.match(text)
# p m = text.match(/(\d+)年(\d+)月(\d+)日/)

# p m[0]
# p m[1]
# p m[2]
# p m[3]
# p m[2, 2]
# p m[1..3]
# # -------------
# text = '私の誕生日は1977年7月17日です。'
# if m = /(\d+)年(\d+)月(\d+)日/.match(text)
#   # マッチした場合の処理
# else
#   # マッチしなかった場合の処理
# end
# -------------
# (?<year>\d+)年(?<month>\d+)月(?<day>\d+)日
# text = '私の誕生日は1977年7月17日です。'
# p m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
# p m[:year]
# p m[:month]
# p m[:day]
# p m['year']
# p m[2]
# -------------
# text = '私の誕生日は1977年7月17日です。'
# if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
#   puts "#{year}/#{month}/#{day}"
# end
# ただし、この機能は左辺と右辺を逆にすると使えないので注意
# また、正規表現オブジェクトを変数に入れたりした場合も使えないので注意
# （正規表現リテラルを直接左辺におく必要がある）
# ---------------
# scan
# # scanメソッドは引数で渡した正規表現にマッチする部分を配列にして返す
# p '123 456 789'.scan(/\d+/)
# # 正規表現に（）があると、キャプチャされた部分が配列の配列になって返ってきます
# p '1977年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
# # グループ化はしたいが、キャプチャはしたくない場合は?:というメタ文字を使う
# p '1977年7月17日 2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
# # 上記は説明のために?:を使ったが本来は不要
# p '1977年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/)

# # [], slice, slice!
# # []に正規表現を渡すと、文字列から正規表現にマッチした部分を抜き出します
# text = '郵便番号は123-4567です'
# p text[/\d{3}-\d{4}/]
# # マッチする部分が複数ある場合は、最初にマッチした文字列が返る
# text = '郵便番号は123-4567です 456-7890'
# p text[/\d{3}-\d{4}/]
# # キャプチャを使うと、第二引数で何番目のキャプチャを取得するか指定出来る
# text = '私の誕生日は1977年7月17日です。'
# # 第二引数がないと、マッチした部分全体が返る
# p text[/(\d+)年(\d+)月(\d+)日/]
# # 第二引数を指定して、3番目のキャプチャを取得する
# p text[/(\d+)年(\d+)月(\d+)日/, 3]
# # シンボルでキャプチャの名前を指定する
# p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]
# # 文字列でキャプチャの名前を指定する
# p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, 'day']

# # sliceメソッドは[]のエイリアスメソッドです
# text = '郵便番号は123-4567です'
# p text.slice(/\d{3}-\d{4}/)

# text = '私の誕生日は1977年7月17日です。'
# p text.slice(/(\d+)年(\d+)月(\d+)日/, 3)

# text = '私の誕生日は1977年7月17日です。'
# p text.slice!(/(\d+)年(\d+)月(\d+)日/)
# p text

# # split
# # splitに正規表現を渡すと、マッチした文字列を区切り文字にして文字列を分解し、配列として返します
# text = '123,456-789'

# # 文字列で区切り文字を指定する
# p text.split(',')

# # 正規表現を使ってカンマまたはハイフンを区切り文字に指定する
# p text.split(/,|-/)

# # gsub, gsub!
# # gsubメソッドを使うと、第一引数の正規表現にマッチした文字列を第二引数の文字列で置き換えます。
# text = '123,456-789'

# # 第一引数に文字列を渡すと、完全一致する文字列を第二引数で置き換える
# p text.gsub(',', ':')

# # 正規表現を渡すと、マッチした部分を第二引数で置き換える
# p text.gsub(/,|-/, ':')

# # キャプチャを使うと、第二引数で\1や\2のように連番で参照できる
# text = '誕生日は1985年2月4日です'
# p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')

# # 名前付きキャプチャは\k<name>のようにして参照出来る
# # シングルクォーテーションのみ、ダブルだとうまく変換されない
# text = '誕生日は1985年2月4日です'
# p text.gsub(
#   /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,
#   '\k<year>/\k<month>/\k<day>'
# )

# # 第二引数にハッシュを渡して、変換のルールを指定
# text = '123,456-789'
# hash = { ',' => ':', '-' => '/' }
# p text.gsub(/,|-/, hash)
# # --------------
# # 正規表現オブジェクトを作成するさまざまな方法
# # /\d{3}-\d{4}/と同じ意味
# Regexp.new('\d{3}-\d{4}')
# # もう一つは%rを使う方法、以下の3つは全部同じ意味  http://example.com
# /http:\/\/example\.com/
# # %rを使うとスラッシュだけはエスケープしなくてよい
# %r!http://example\.com!
# %r{http://example\.com}

# # / /や%rの中で#{}を使うと変数展開出来る
# pattern = '\d{3}-\d{4}'
# p '123-4567' =~ /#{pattern}/
# # -------------
# # case文で正規表現を使う
# tel = '03-1234-5678'
# date = '2021/04/27'
# postal_code = '123-4567'

# case postal_code
# when /^\d{3}-\d{4}$/
#   puts '郵便番号です'
# when /^\d{4}\/\d{1,2}\/\d{1,2}$/
#   puts '日付です'
# when /^\d+-\d+-\d+$/
#   puts '電話番号です'
# end
# # ----------------
# # 正規表現オブジェクト作成時のオプション
# # iオプションはアルファベットの大文字と小文字の違いを無視する
# p 'HELLO' =~ /hello/i
# p 'HELLO' =~ %r{hello}i
# # Regexp.newを使う場合は長い定数を使う：省略
# # mオプションはドット(.)が改行文字にもマッチする
# p "Hello\nBye" =~ /Hello.Bye/
# p "Hello\nBye" =~ /Hello.Bye/m
# # xオプションを使うと、空白文字（半角スペースや改行）が無視され、#でコメントも書けるようになる
# regexp = /
#   \d{3} #郵便番号の先頭3桁
#   -     #区切り文字のハイフン
#   \d{4} #郵便番号の末尾4桁
# /x
# p '123-4567' =~ regexp
# ----------------------
# 組み込み変数でマッチの結果を取得する
# $で始まる特殊な変数（組み込み変数）がある。=~やmatchメソッドを使うと代入される
# text = '私の誕生日は1985年2月4日です'

# text =~ /(\d+)年(\d+)月(\d+)日/
# p $~
# p $&
# p $1
# p $2
# p $3
# p $+
# # ーーーーーーーーーーーーーーー
# # Regexp.last_matchメソッド
# text = '私の誕生日は1985年2月4日です'

# text =~ /(\d+)年(\d+)月(\d+)日/

# p Regexp.last_match
# p Regexp.last_match(0)
# p Regexp.last_match(1)
# p Regexp.last_match(2)
# p Regexp.last_match(3)
# p Regexp.last_match(-1)
# # ーーーーーーーーーーーー
# # 組み込み変数を書き換えないmatch?メソッド
# # Ruby2.4で追加された。このメソッドは文字列が正規表現にマッチすればtrue,しなければfalseを返す
# # ただしマッチした場合でも組み込み変数やRegexp.last_matchの内容を書き換えない>Regexpや$~に値が入らない
# # そのため、=~やmatchより高速に動作します
# p /\d{3}-\d{4}/.match?('123-4567')
# p $~
# p Regexp.last_match
# p '123-4567'.match?(/\d{3}-\d{4}/)

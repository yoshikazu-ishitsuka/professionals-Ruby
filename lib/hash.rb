# 空のハッシュを作る
# {}

# キーと値の組み合わせを3つ格納するハッシュ
# { キー1 => 値1, キー2 => 値2, キー3 => 値3 }

# ハッシュはHashクラスのオブジェクト

# 空のハッシュを作成し、そのクラス名を確認する
# {}.class

# {
#   'japan' => 'yen',
#   'us' => 'dollar',
#   'india' => 'rupee',
# }
# # ---------------
# # 要素の追加、変更、取得
# # ハッシュ[キー]  = 値
# # -----------------------
# # 以下は新たにイタリアの通貨を追加するコード例
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# # イタリアの通貨を追加する
# currencies['italy'] = 'euro'
# p currencies
# currencies['japan'] = '円'
# p currencies
# p currencies['india']
# # # ---------------
# # ハッシュを使った繰り返し処理
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# # currencies.each do |key, value|
# #   puts "#{key} : #{value}"
# # end

# currencies.each do |key_value|
#   key = key_value[0]
#   value = key_value[1]
#   puts "#{key} : #{value}"
# end
# # # --------------------
# # ハッシュの同値比較、要素数の取得、要素の削除
# # ==でハッシュ同士を比較すると、同じハッシュかどうかをチェックできます。このときすべてのキーと値が同じであればtrueが返ります。
# a = { 'x' => 1, 'y' => 2, 'z' => 3 }

# # すべてのキーと値が同じならtrue
# b = { 'x' => 1, 'y' => 2, 'z' => 3 }
# p a == b

# # 並び順が異なっていてもキーと値がすべて同じならTrue
# c = { 'y' => 2, 'z' => 3, 'x' => 1 }
# p a == c

# d = { 'x' => 10, 'y' => 2, 'z' => 3 }
# p a == d

# p a = { 'x' => 1, 'y' => 2, 'z' => 3 }.size

# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
# p currencies.delete('japan')
# p currencies

# # ブロックを渡すとキーが見つからないときの戻り値を作成出来る
# p currencies.delete('italy') { |key| "Not found: #{key}" }
# # # -------------------------
# # ハッシュの使用頻度が髙いメソッド
# # keysメソッドはハッシュのキーを配列として返します
# currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# p currencies.keys
# # valuesメソッドはハッシュの値を配列として返します
# p currencies.values
# # has_key?(key?/include?/member?)
# # has_key?メソッドはハッシュの中に指定されたキーが存在するかどうかを確認するメソッド。
# p currencies.has_key?(:japan)
# p currencies.has_key?(:italy)
# # -----------------------
# # /**をハッシュの前につけるとハッシュリテラル内でほかのハッシュのキーと値を展開することができます
# h = { us: 'dollar', india: 'rupee' }
# p a = { japan: 'yen', **h }
# # mergeメソッドを使っても同じになる
# p a = { japan: 'yen' }.merge(h)
# ---------------------
# ハッシュを使った疑似キーワード引数
# def buy_burger(menu, options = {})
#   drink = options[:drink]
#   potato = options[:potato]
# end

# buy_burger('cheese', drink: true, potato: true)
# 特別な要件が無い限り、疑似キーワード引数よりも文法レベルでRuby本体がサポートしてくれるキーワード引数を使った方がメリットが大きい。
# # ----------------------
# # 任意のキーワードを受け付ける**引数
# # キーワード引数を使うメソッドに存在しないキーワードを渡すとエラーが発生する
# # def buy_burger(menu, drink: true, potato: true)
# # end
# # p buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)
# # >unknown keywords: salad, chicken (ArgumentError)

# # しかし、任意のキーワードも同時に受け取りたいという時は**を付けた引数を最後に用意します。**を付けた引数にはキーワード引数で指定されていないキーワードがハッシュとして格納されます。
# # 想定外のキーワードはothers引数で受け取る
# def buy_burger(menu, drink: true, potato: true, **others)
#   # othersはハッシュとして渡される
#   puts others
# end
# buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)
# # -------------------------
# # メソッド呼び出し時の{}の省略
# # 最後の引数がハッシュであればハッシュリテラルの{}を省略出来るというルールがある。
# def buy_burger(menu, options = {})
#   puts options
# end
# buy_burger('fish', { 'drink' => true, 'potato' => 'false' })
# # 上は下のように{}を省略出来る
# buy_burger('fish', 'drink' => true, 'potato' => 'false' )
# # ただし、あくまで最後の引数がハッシュであればに限る
# # # ーーーーーーーーーーーーーーーー
# # ハッシュリテラルの{}とブロックの{}
# def buy_burger(options = {}, menu)
#   puts options
# end
# buy_burger({ 'drink' => true, 'potato' => 'false' }, 'fish')
# # ()ありのメソッド呼び出し
# puts('Hello')
# # ()なしのメソッド呼び出し
# puts 'Hello'
# buy_burger { 'drink' => true, 'potato' => 'false' }, 'fish'
# # =>{}がブロックとRubyに解釈されてエラーになる
# # メソッドの第一引数にハッシュを渡そうとする場合は必ず()を付けてメソッドを呼び出す
# buy_burger({ 'drink' => true, 'potato' => 'false' }, 'fish')
# # 第二引数以降にハッシュがくる場合は()を省略してもエラーにならない
# # この場合はハッシュが最後の引数なので、{}を省略することも可能
# buy_burger 'fish', 'drink' => true, 'potato' => 'false'
# # # -------------------------
# # ハッシュから配列へ、配列からハッシュへ
# # ハッシュはto_aメソッドで配列に変換することが可能
# currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# p currencies.to_a
# # 反対に、配列にto_hメソッドを使うと配列をハッシュに変換することが出来る
# array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
# p array.to_h
# array = [:japan, "yen", :us, "dollar", :india, "rupee"]
# p Hash[*array]
# # # --------------------
# # ハッシュの初期値を理解する
# h = Hash.new('hello')
# a = h[:foo]
# b = h[:bar]

# p a.equal?(b)

# a.upcase!
# p a
# p b
# p h
# # ---------------
# # Hash.newとブロックを組み合わせて初期値を返すことでこのような問題を避けることが出来る
# h = Hash.new { 'hello' }
# a = h[:foo]
# b = h[:bar]
# p a.equal?(b)
# a.upcase!
# p a
# p b
# p h
# # -------------
# # Hash.newにブロックを与えるとブロック引数としてハッシュ自身と見つからなかったキーが渡される。
# # そこでこのブロック引数を使って、ハッシュにキーと初期値も同時に設定するコードもよく使われます。
# h = Hash.new { |hash, key| hash[key] = 'hello' }
# p h[:foo]
# p h[:bar]
# p h
# # # ---------------
# # シンボルを作成するさまざまな方法
# :apple
# :ruby_is_fun
# :okay?
# :welcome!
# :_secret
# :$dollar
# :@at_mark
# # 無効な文字列
# # :12345
# # :ruby-is-fun
# # :ruby is fun
# # :()
# # ただしシングルクォーテーションで囲めば有効
# :'12345'
# :'ruby-is-fun'
# :'ruby is fun'
# :'()'

# name = 'Alice'
# p :"#{name.upcase}"
# # 文字列：値の形式で書くと、キーがシンボルになる
# p hash = { 'abc': 123 }
# # --------------------
# # %記号でシンボルやシンボルの配列を作成する
# # シンボルを作成する場合は%sを使う
# # ・!を区切り文字に使う
# p %s!ruby is fun!
# # ・()を区切り文字に使う
# p %s(ruby is fun)
# # シンボルの配列は%i
# p %i(apple orange melon)
# # 改行文字を含めたり、式展開するときは%I
# name = 'Alice'
# # %Iでは改行文字や式展開が有効になったうえでシンボルが作られる
# p %I(hello\ngood-bye #{name.upcase})
# # -------------
# # シンボルと文字列の関係
# # 文字列とシンボルは似ているが別物なので互換性はない
# # ただし、to_symメソッド（intern）で文字列をシンボルに変換することができる
# string = 'apple'
# symbol = :apple
# p string.to_sym
# p string.to_sym == symbol
# # 反対にシンボルを文字列に変換する場合はto_sメソッド(id2name)を使う
# # メソッドによっては文字列とシンボルを同等に扱うものがある。たとえばrespond_to?メソッドは
# # オブジェクトに対して、文字列又はシンボルで指定した名前のメソッドを呼び出せるかどうかを調べることができる
# # respond_to?メソッドの引数には文字列とシンボルの両方を渡せる
# p 'apple'.respond_to?('include?')
# p 'apple'.respond_to?(:include?)
# # しかし、文字列とシンボルを同等に扱うことは少ない
# p 'apple'.include?('pp')
# p 'apple'.include?(:pp) # no implicit conversion of Symbol into String (TypeError)
# # # --------------
# # よく使われるイディオム  条件分岐で変数に代入 / &.演算子
# # 国名に応じて通貨を返す（該当がなければnil）
# def find_currency(country)
#   currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
#   currencies[country]
# end
# # 指定された国の通貨を大文字にして返す
# def show_currency(country)
#   currency = find_currency(country)
#   # nilでないことをチェック
#   if currency
#     currency.upcase
#   end
# end

# p show_currency(:japan)
# p show_currency(:brazil)

# def show_currency(country)
#   # 条件分岐内で直接変数に代入してしまう（値が取得できれば真、できなければ偽）
#   if currency = find_currency(country)
#     currency.upcase
#   end
# end
# # ただしこの書き方は=と==を間違えたと思われるためあまり好ましくない
# # Ruby2.3から登場した&.演算子を使う
# # &.演算子を使うとメソッドを呼び出せれたオブジェクトがnilでない場合はその結果を、nilだった場合はnilを返す。
# # nil以外のオブジェクトであれば、a.upcaseと書いた場合と同じ結果になる
# a = 'foo'
# p a&.upcase
# # nilであればnilを返す
# a = nil
# p a&.upcase
# # 先程のshow_currencyも書き換えることができる
# def show_currency(country)
#   currency = find_currency(country)
#   # currencyがnilの場合を考慮して、&.演算子でメソッドを呼び出す
#   currency&.upcase
# end
# p show_currency(:japan)
# p show_currency(:brazil)
# # &.演算子にはsave navigation operatorという名前があるが、lonely operatorと呼ばれることもある
# # # -----------------
# # よく使われるイディオム ||=を使った自己代入
# limit ||= 10
# # このコードの意味は変数limitがnilまたはfalseであれば、10を代入する（それ以外はlimitの値をそのまま使う）の意味
# limit = nil
# limit ||= 10
# p limit

# limit = 20
# limit ||= 10
# p limit
# # ----------------
# # よく使われるイディオム !!を使った真偽値の型変換
# def user_exists?
#   # データベースなどからユーザーを探す
#   user = find_user
#   if user
#     # userが見つかったのでtrue
#     true
#   else
#     # userが見つからないのでfalse
#     false
#   end
# end
# # 上のようなコードは次のようにコンパクトに書ける
# def user_exists?
#/   !!find_user
# end
# #/ !は否定の演算子です。!Aと書いた場合、Aが真であればfalseを、そうでなければtrueを返します。
# # つまりここで値がtrueまたはfalseのどちらかに変換されます。それをもう一度!で反転させると、元のA
# # に対応する真偽値がtrueまたはfalseとして得ることができるわけです。
# #/ !!が出てきたら「これはtrueまたはfalseに変換するためだな」と解釈する
# --------------------

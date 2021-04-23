# 文字列をハッシュのキーにする
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
# # 文字列を使って値を取り出す
# currencies['japan'] # =>yen

# # シンボルをハッシュのキーにする
# currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
# # シンボルを使って値を取り出す(文字列より高速)
# currencies[:japan]
# # -----------------
# { japan: :yen, us: :dollar, india: :rupee }
# # 上のハッシュは下のハッシュとまったく同じ
# { :japan => :yen, :us => :dollar, :india => :rupee }
# -------------------
# キーや値に異なるデータ型を混在させる
# person = {
#   name: 'Alice',
#   age: 20,
#   friends: ['Bob', 'Carol'],
#   phones: { home: '1234-0000', mobile: '5678-0000' }
# }

# p person[:age]
# p person[:friends]
# p person[:phones][:mobile]
# # ----------------
# メソッドのキーワード引数とハッシュ
# def buy_burger(menu, drink, potato)
#   # ハンバーガーを購入
#   if drink
#     # ドリンクを購入
#   end
#   if potato
#     # ポテトを購入
#   end
# end

# # チーズバーガーとドリンクとポテトを購入する
# buy_burger('cheese', true, true)

# # フィッシュバーガーとドリンクを購入する
# buy_burger('fish', true, false)

# def メソッド名(キーワード引数1: デフォルト値1, キーワード引数2: デフォルト値2)
#   # メソッドの実装
# end

# def buy_burger(menu, drink: true, potato: true)
#   # 省略
# end

# buy_burger('cheese', drink: true, potato: true)
# buy_burger('fish', drink: true, potato: false)

# buy_burger('cheese')
# buy_burger('fish', potato: false)
# # ------------------

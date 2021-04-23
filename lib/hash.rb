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
# # -------------------------

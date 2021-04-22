# delete_at
# a = [1,2,3]

# p a.delete_at(1)
# p a
# -------------
# a, b = [1, 2]
# p a
# p b
# -----------------

# # divmodは商と余りを配列で返す
# p 14.divmod(3)
# # =>[4, 2] 商 余り

# # 戻り値を配列のまま受け取る
# quo_rem = 14.divmod(3)
# p "商＝#{quo_rem[0]}, 余り＝#{quo_rem[1]}"
# # =>"商＝4, 余り＝2"

# # 多重代入で別々の変数として受け取る
# quotient, remainder = 14.divmod(3)
# p "商＝#{quotient}, 余り＝#{remainder}"
# # =>"商＝4, 余り＝2"
# ------------------
# map/collect
# numbers = [1,2,3,4,5]
# new_numbers = numbers.map { |n| n * 10 }
# p new_numbers

# ------------------
# select/find_all/reject
# 各要素のブロックを評価し、戻り値が真の要素を集めた配列を返すメソッド
# numbers = [1,2,3,4,5,6]
# even_numbers = numbers.select { |n| n.even? }
# p even_numbers

# numbers = [1,2,3,4,5,6]
# non_even_numbers = numbers.reject { |n| n.even? }
# p non_even_numbers
# ----------------------
# find/detect
# ブロックの戻り値が真になった最初の要素を返す
# numbers = [1,2,3,4,5,6]
# even_number = numbers.find { |n| n.even? }
# p even_number
# ーーーーーーーーーーーーーーーーーー
# inject/reduce
# たたみこみ演算を行うメソッド。
# 次のコードはeachメソッドを使って１から４までの値を変数sumに加算していくコードです。
# numbers = [1,2,3,4]
# sum = 0
# numbers.each { |n| sum += n }
# p sum
# # これをinjectを使うと
# numbers = [1,2,3,4]
# sum = numbers.inject(0) { |result, n| result + n }
# p sum

# week = %w[Mon Tue Wed Thu Fri Sat]
# p week.inject('Sun') { |result, s| result + ' ' + s }
# p week
# -----------------
program = %w[ruby java php]
p program.map(&:upcase)

p [1,2,3,4,5,6].select(&:odd?)

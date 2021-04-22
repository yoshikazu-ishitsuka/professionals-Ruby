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
# program = %w[ruby java php]
# p program.map(&:upcase)

# p [1,2,3,4,5,6].select(&:odd?)
# ーーーーーーーーーーーーーーーーー
# さまざまな要素の取得方法
# a = [1,2,3,4,5]
# p a[1, 3]
# p a.values_at(0,2,4)
# p a[a.size - 1]
# p a[-1]
# p a.last(2)
# p a.first(2)
# --------------------
# さまざまな要素の変更方法
# a = [1,2,3]
# a[-3] = 10
# p a
# a = [1,2,3,4,5]
# a[1,3] = 100
# p a
# a = []
# a.push(1)
# a.push(2,3)
# p a
# a = [1,2,3,1,2,3]
# a.delete(2)
# p a
# ーーーーーーーーーーーーー
# 配列の連結
# concatは破壊的なので、思いがけないところで悪影響を与えてしまう可能性があるため、基本は＋を使う
# a = [1]
# b = [2, 3]
# a.concat(b)
# p a
# p b
# a = [1]
# b = [2, 3]
# p a + b
# p a
# p b
# ----------------------
# 配列の和集合・差集合・積集合
# a = [1,2,3]
# b = [3,4,5]
# p a | b
# p a - b
# p a & b
# # 配列より効率的に集合を扱えるSetクラス
# require 'set'

# a = Set.new([1,2,3])
# b = Set.new([3,4,5])
# p a | b
# p a - b
# p a & b
# ------------------
# 多重代入で残りの全要素を配列として受け取る
# e,f = 100, 200, 300
# p e
# p f
# e,*f = 100, 200, 300
# p e
# p f
# ----------------
# 1つの配列を複数の引数tとして展開する(splat展開)
# a = []
# b = [2, 3]
# p a.push(1)
# p a.push(b)

# a = []
# b = [2, 3]
# p a.push(1)
# p a.push(*b)
# -------------------
# メソッドの可変長引数
# def メソッド名(引数１、引数２、＊可変長引数)
#   メソッドの処理
# end
# def greeting(*names)
#   puts "#{names.join('と')},こんにちは！"
# end

# greeting('田中さん')
# greeting('田中さん', '鈴木さん')
# greeting('田中さん', '鈴木さん', '佐藤さん')
# -----------------------
# []の中に*付きで別の配列を置くと、その配列が展開されて別々の要素になります。
# これもsplat展開の一種です。
# a = [1,2,3]
# p [a]
# p [*a]
# p a
# p [-1, 0, *a, 4, 5]
# ------------------
# ==で等しい配列かどうか判断する
# p [1,2,3] == [1,2,3]
# -------------
# %記法で文字列の配列を簡潔に作る
# p %w!apple melon orange!
# p %w(apple melon orange)
# p %w[apple melon orange]
# p %w(big\ apple small\ melon orange)
# prefix = 'This is'
# puts %W(#{prefix}\ an\ apple small\nmelon orange)
# -------------------
# 文字列を配列に変換する
# charsメソッドは文字列中の１文字１文字を配列の要素に分解する
# p 'Ruby'.chars
# splitメソッドは引数で渡した区切り文字で文字列を配列に分割するメソッド
# p 'Ruby,Java,PHP,Perl'.split(',')
# ------------------------
# 配列に初期値を設定する
# a = []と同じ
# p a = Array.new
# p a = Array.new(5)
# p a = Array.new(5, 0)
# p a = Array.new(10){|n| n % 3 + 1}
# =>0~9がブロック引数に渡される
# -------------------
# 配列に初期値を設定する場合の注意点
# p a = Array.new(5, 'default')
# p str = a[0]
# p str.upcase!
# p a
# # 配列の全要素が同じ文字列オブジェクトを参照しているため。一つを変えたつもりが全て変わる
# p a = Array.new(5){'default'}
# p str = a[0]
# p str.upcase!
# p a
# ---------------------

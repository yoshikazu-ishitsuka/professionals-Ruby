# numbers = [1,2,3,4]
# sum = 0
# numbers.each do |n|
#   sum += n
# end

# p sum
# ------------------
# 配列から2の要素を削除する
# a = [1,2,3,1,2,3]
# a.delete(2)
# p a

# # 配列から値が奇数の要素を削除する
# b = [1,2,3,4,5,6]
# b.delete_if do |n|
#   n.odd?
# end
# p b
# ----------------------
# numbers = [1,2,3,4]
# sum = 0
# numbers.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value
# end
# p sum
# ----------------------
# numbers = [1,2,3,4]
# sum = 0
# numbers.each { |n| sum += n }
# p sum
# ------------------
# # 添字つきの繰り返し処理
# fruits = %w[apple orange melon]
# fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
# # ----------------
# # with_indexメソッドを使った添字つきの繰り返し処理
# fruits = %w[apple orange melon]
# # 名前に'a'を含み、なおかつ添字が奇数の要素を削除する
# p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
# ーーーーーーーーーーーーー
# 添字を０以外の数値から開始させる
# fruits = %w[apple orange melon]
# # eachで繰り返しつつ、1から始まる添字を取得する
# fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
# # mapで処理しつつ、10から始まる添字を取得する
# p fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
# # # ------------------
# # 配列がブロック引数に渡される場合
# dimensions = [
#   # [縦, 横]
#   [10,20],
#   [30,40],
#   [50,60],
# ]
# areas = []

# # pattern1
# # dimensions.each do |dimension|
# #   length = dimension[0]
# #   width = dimension[1]
# #   areas << length * width
# # end

# # pattern2
# dimensions.each do |length, width|
#   areas << length * width
# end
# p areas
# # ------------------
# dimensions = [
#   # [縦, 横]
#   [10,20],
#   [30,40],
#   [50,60],
# ]
# # ブロック引数を（ ）で囲んで、配列の要素を別々の引数として受け取る
# dimensions.each_with_index do | (length, width), i |
#   puts "length: #{length}, width: #{width}, i: #{i}"
# end
# # ------------------
# # ブロックローカル変数
# # ブロック引数を;で区切り、続けて変数を宣言すると、ブロック内でのみ有効な独立したローカル変数を宣言することが出来ます。
# numbers = [1,2,3,4]
# sum = 0
# # ブロックの外にあるsumとは別物の変数sumを用意する
# numbers.each do |n; sum|
#   # 別物のsumを10で初期化し、ブロック引数の値を加算する
#   sum = 10
#   sum += n
#   p sum
# end
# p sum
# --------------------
# 繰り返し処理以外でも使用されるブロック
# sample.txtを開いて文字列を書き込む（クローズ処理は自動的に行われる）
# File.open("./sample.txt", "w") do |file|
#   file.puts("1行目のテキストです。")
#   file.puts("2行目のテキストです。")
#   file.puts("3行目のテキストです。")
# end
# # # -------------------
# # do…endと｛ ｝の結合度の違い
# # { }の方が結合度が強い
# a = [1,2,3]
# p a.delete(100)
# a.delete(100) do
#   p 'NG'
# end

# a.delete 100 do
#   p 'NG'
# end

# # 本来はエラーだが2.4.0と2.4.1はエラーにならない
# p a.delete 100 { 'NG' }

# p a.delete(100) {'NG'}
# # ------------------
# # ブロックを使うメソッドを定義する
# names = %w[田中 鈴木 佐藤]
# p names.map { |name| "#{name}さん" }.join('と')
# ----------------
# さまざまな繰り返し処理
# # times
# sum = 0
# # 処理を5回繰り返す、nには0,1,2,3,4が入る
# 5.times {|n| sum+= n }
# sum = 0
# 5.times { sum += 1 }
# p sum
# # ----------------
# # upto downto
# # nからmまで数値を増やしたいとき
# a = []
# 10.upto(14) { |n| a << n }
# p a
# a = []
# 14.downto(10) { |n| a << n }
# p a
# ---------------
# step
# 1, 3, 5, 7のように、nからmまで数値をｘずつ増やしながら何かを処理したい時に使う。
# 開始値.step(上限値、１度に増減する大きさ)
# a = []
# 1.step(10, 2) { |n| a << n }
# p a

# a = []
# 10.step(1, -2){ |n| a << n }
# p a
# # -------------------
# # while until
# a = []
# while a.size < 5
#   a << 1
# end
# p a

# a = []
# while a.size < 5 do a << 1 end
# p a

# a = []
# a << 1 while a.size < 5
# p a

# # どんな条件でも最低１回は実行したいという場合はbegin...endで囲んでからwhileを書く
# a = []
# begin
#   a << 1
# end while false
# p a

# a = [10,20,30,40,50]
# until a.size <= 3
#   a.delete_at(-1)
# end
# p a

# a = [10,20,30,40,50]
# while a.size > 3
#   a.delete_at(-1)
# end
# p a
# -----------------------
# loop
numbers = [1,2,3,4,5]
loop do
  # sampleメソッドでランダムに要素を１つ取得する
  n = numbers.sample
  puts n
  break if n == 5
end

# loopはブロックを使うがwhileはブロックを使わないので、変数は外でも使える
# ーーーーーーーーーーーーー

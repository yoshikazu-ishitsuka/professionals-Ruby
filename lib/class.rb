# # 改札機オブジェクトの作成
# umeda = Gate.new(:umeda)
# mikuni = Gate.new(:mikuni)

# # 150円の切符を購入して梅田で乗車し、三国で降車する（NG）
# ticket = Ticket.new(150)
# umeda.enter(ticket)
# mikuni.exit(ticket) #=>false

# # 190円の切符を購入して梅田で乗車し、三国で降車する（OK）
# ticket = Ticket.new(190)
# umeda.enter(ticket)
# mikuni.exit(ticket) #=>true
# -------------
# # ユーザのデータを作成する
# users = []
# users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
# users << { first_name: 'Bob', last_name: 'Python', age: 30 }

# # ユーザのデータを表示する
# users.each do |user|
#   puts "氏名： #{user[:first_name]} #{user[:last_name]}、 年齢： #{user[:age]}"
# end
# -------------
# 氏名メソッドを作成
# ユーザのデータを作成する
# users = []
# users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
# users << { first_name: 'Bob', last_name: 'Python', age: 30 }

# # 氏名を作成するメソッド
# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end

# # ユーザのデータを表示する
# users.each do |user|
#   puts "氏名： #{full_name(user)}、 年齢： #{user[:age]}"
# end
# ただし、ハッシュを使うと、キーをタイプミスしてもnilが返るだけでエラーにならないので、気づきにくい。
# またハッシュは新しくキーを追加したり、内容を変更出来るのでもろくて壊れやすいプログラムになりがち
# 大きなプログラムになってくるとハッシュでは管理しきれなくなる
# そこで登場するのがクラスです。ここではUserクラスという新しいデータ型を作り、そこにデータを入れたほうが堅牢になる。
# Userクラスを定義する
# class User
#   attr_reader :first_name, :last_name, :age

#   def initialize(first_name, last_name, age)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end
# end

# # ユーザのデータを作成
# users = []
# users << User.new('Alice', 'Ruby', 20)
# users << User.new('Bob', 'Python', 30)

# # 氏名を作成するメソッド
# def full_name(user)
#   "#{user.first_name} #{user.last_name}"
# end

# # ユーザのデータを表示
# users.each do |user|
#   puts "氏名： #{full_name(user)}, 年齢： #{user.age}"
# end

# p users[0].first_name
# p users[0].first_name #=>エラーが出る

# Userクラスを導入すると、タイプミス時にエラーが出る
# 新しく属性を追加したり、内容を変更したりも防止できる


# full_nameメソッドはUserクラス内部に定義する

# Userクラスを定義する
# class User
#   attr_reader :first_name, :last_name, :age

#   def initialize(first_name, last_name, age)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end

# # 氏名を作成するメソッド
#   def full_name
#     "#{first_name} #{last_name}"
#   end

# end

# # ユーザのデータを作成
# users = []
# users << User.new('Alice', 'Ruby', 20)
# users << User.new('Bob', 'Python', 30)

# # ユーザのデータを表示
# users.each do |user|
#   puts "氏名： #{user.full_name}, 年齢： #{user.age}"
# end
# -------------
class User
  # first_nameの読み書きを許可する
  attr_accessor :first_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

end

user = User.new('Alice', 'Ruby', 20)
p user.first_name

# first_nameを変更する
user.first_name = 'ありす'
p user.first_name

# %q!   !  はシングルクォーテーション
# %Q!   !  はダブルクォーテーション
# %!    !  もダブルクォーテーション
# !の区切り文字は?や{}など任意の文字に変えられる

# --------------------

# a = <<TEXT
# これはヒアドキュメントです。
# 複数行に渡る長い文字列を作成するのに便利です。
# TEXT
# puts a

# # ----------------------

# def some_method
#   <<-TEXT
#   これはヒアドキュメントです
#   <<-を使うと最後の識別子をインデントできます
#   TEXT
# end

# puts some_method

# # ---------------------

# def some_method
#   <<~TEXT
#   これはヒアドキュメントです
#   <<~を使うと内部文字列のインデントが無視されます
#   TEXT
# end

# puts some_method

# --------------------

# name = 'Alice'
# a = <<TEXT
#     ようこそ、#{name}さん
#     以下のメッセージをご覧ください
# TEXT
# puts a

# -----------------

# a = 'Ruby'
# a.prepend(<<TEXT)
# Java
# PHP
# TEXT
# puts a

# b = <<TEXT.upcase
# Hello,
# Good-bye.
# TEXT
# puts b

# ----------------
# puts "\u3042\u3044\u3046"

# ---------------
# def foo(time = Time.now, message = bar)
#   puts "time: #{time}, message: #{message}"
# end

# def bar
#   'BAR'
# end

# foo
# ----------------
# def multiple_of_three?(n)
#   n % 3 == 0
# end
# p multiple_of_three?(4)
# p multiple_of_three?(5)
# p multiple_of_three?(6)
# -------------------
# def reverse_upcase!(s)
#   s.reverse!.upcase!
# end

# s = 'ruby'
# p reverse_upcase!(s)
# -------------------

# a = 'hello'
# b = 'hello'
# p a.object_id
# p b.object_id

# p a.equal?(b)
# -------------------
require 'date'
p Date.today

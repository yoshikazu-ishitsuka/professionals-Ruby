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
numbers = [1,2,3,4]
sum = 0
numbers.each { |n| sum += n }
p sum

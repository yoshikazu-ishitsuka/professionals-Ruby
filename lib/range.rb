# 1..5.include?(1)
# p (1..5).include?(1)

# a = [1,2,3,4,5]
# p a[1..3]

# b = 'abcdef'
# p b[1..3]
# ---------------
# def liquid?(temperature)
#   0 <= temperature && temperature < 100
# end
# p liquid?(-1)
# p liquid?(0)
# p liquid?(99)
# p liquid?(100)

# def liquid?(temperature)
#   (0...100).include?(temperature)
# end

# p liquid?(-1)
# p liquid?(0)
# p liquid?(99)
# p liquid?(100)
# ------------------
# def charge(age)
#   case age
#   when 0..5
#     0
#   when 6..12
#     300
#   when 13..18
#     600
#   else
#     1000
#   end
# end
# p charge(3)
# p charge(12)
# p charge(16)
# p charge(25)
# -----------------
# p (1..5).to_a
# p (1...5).to_a

# p ('a'..'e').to_a
# p ('a'...'e').to_a

# p [*1..5]
# p [*1...5]
# -------------
sum = 0
(1..4).each { |n| sum += n }
p sum

numbers = []
(1..10).step(2) { |n| numbers << n }
p numbers

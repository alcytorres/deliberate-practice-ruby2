
# 161
# 161/2 = 80 reamainder of 1
# 80/2 = 40 reamainder of 0
# 40/2 = 20 reamainder of 0
# 20/2 = 10 reamainder of 0
# 10/2 = 5 remainder of 0
# 5/2 = 2 remainder of 1
# 2/2 = 1  remainder of 0
# 1/2 = 0 reaminder of 1
# 10100001


# 71
# 71/2 = 35 => 1
# 35/2 = 17 =>1
# 17/2 = 8 => 1
# 8/2 = 4 => 0
# 4/2 = 2 => 0
# 2/2 = 1 => 0
# 1/2 = 0 => 1
# 1000111



# # Syntax:
# (1..5).to_a    # Output: [1, 2, 3, 4, 5]  # Inclusive range
# (1...5).to_a   # Output: [1, 2, 3, 4]    # Exclusive range



3.times { |_| puts "Hello" }  # `_` is used for an unused block variable



def select_values_greater_than_10(hash)
  hash.select{|_, value| value > 10}
end

data = { a: 5, b: 15, c: 8, d: 20 }
p select_values_greater_than_10(data)
# Output: { b: 15, d: 20 }




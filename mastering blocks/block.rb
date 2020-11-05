# Syntax and Styling
#  ===== Block Basics 

# Multiline Line Block 
3.times do 
    puts "Echo!"
end 

# Single Line Block
6.times { puts "Echo!" }

# Block Parameters
3.times do |number|
    puts "#{number}!"
end 

# Short From 
3.times { |n| puts "#{n} You are awesome"}


1.upto(3) { |n| puts "#{n} You are awesome"}
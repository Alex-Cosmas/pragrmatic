weekdays = ["monday", "tuesday", "wednesday", "thursady", "friday", "saturday" , "sunday"]

weekdays.each do |day|
    puts day.capitalize
end

weekdays.each { |d| puts d.capitalize } 



class Order 
    attr_reader :email, :total

    def initialize (email, total)
        @email = email 
        @total = total
    end

    def to_s
        "#{email}: $#{total}"
    end
end


orders = []
1.upto(5) do |n|
    orders << Order.new("customers #{n}@example.com", n * 10)
end 
puts orders

puts "Newsletter emails:"

orders.each do |order|
    puts order.email
end

sum = 0 
orders.each { |ord| sum += ord.total }
puts "Total Sales: $#{sum}"

taxes = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04 }
taxes.each do |key,value|
  puts "#{key}: #{value * 100} "
end 


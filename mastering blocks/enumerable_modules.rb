class Order 

  TAX_TABLE = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04 }
  
  attr_reader :email, :total, :state, :status

    def initialize (email, state, total, status=:pending)
        @email = email 
        @state = state
        @total = total
        @status = status
    end

    def tax 
      total * TAX_TABLE[state]
    end 

    def to_s
        "#{email}  (#{state}): $#{total} - #{status}"
    end
end


# Created orders using explict attributes
orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)

puts orders

puts "----"

puts "Big orders:"
big_orders = orders.select {|o| o.total >= 300 }

puts big_orders 

puts "----"

# Gotchas 
puts "Gotchas:"
big_orders = orders.select {|o| puts o.total >= 300 }

puts big_orders 

# Do End: Single form are tighter
puts "Gotchas:"
puts orders.select do |o| 
  o.total >= 300 
end


puts "----"
puts "Small orders:"
small_orders = orders.reject {|o| o.total >= 300 }
puts small_orders

puts "----"

# Warehouse Called to know if any orders are pending

puts orders.any? { |ord| ord.status == :pending }
pending_orders = orders.detect { |ord| ord.status == :pending}

puts pending_orders 


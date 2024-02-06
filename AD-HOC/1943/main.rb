# frozen_string_literal:true

def get_category(k)
  [1, 3, 5, 10, 25, 50, 100].each do |category|
    return category if k <= category
  end
end

k = gets.to_i
puts "Top #{get_category(k)}"

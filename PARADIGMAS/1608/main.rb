# frozen_string_literal:true

def get_lowest_price(b, ingredients_prices)
  lowest_price = 100 * 1000 * 1000
  b.times do
    cake_price = _get_cake_price(ingredients_prices)
    lowest_price = cake_price if cake_price < lowest_price
  end
  lowest_price
end

def _get_cake_price(ingredients_prices)
  price = 0
  qi, *recipe = gets.strip.split.map(&:to_i)
  qi.times do |i|
    ingredient = recipe[i * 2]
    quantity = recipe[i * 2 + 1]
    price += ingredients_prices[ingredient] * quantity
  end
  price
end

t = gets.to_i
t.times do
  d, _, b = gets.strip.split.map(&:to_i)
  ingredients_prices = gets.strip.split.map(&:to_i)
  lowest_price = get_lowest_price(b, ingredients_prices)
  puts d / lowest_price
end

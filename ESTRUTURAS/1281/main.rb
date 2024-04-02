# frozen_string_literal:true

def get_products
  products = {}
  m = gets.to_i
  m.times do
    product, price = gets.split
    products[product] = price.to_f
  end
  products
end

def get_total(products)
  total = 0
  p = gets.to_i
  p.times do
    product, qty = gets.split
    total += products[product] * qty.to_i
  end
  total
end

n = gets.to_i
n.times do
  products = get_products
  total = get_total(products)
  puts format('R$ %.2f', total)
end

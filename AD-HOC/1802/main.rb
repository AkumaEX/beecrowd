def get_prices(v_p, v_m, v_f, v_q, v_b)
  prices = []
  v_p.each do |p|
    v_m.each do |m|
      v_f.each do |f|
        v_q.each do |q|
          v_b.each do |b|
            prices.push(p + m + f + q + b)
          end
        end
      end
    end
  end
  prices
end

def sum_most_expensive(k, prices)
  prices.sort.reverse[...k].sum
end

_, *v_p = gets.split.map(&:to_i)
_, *v_m = gets.split.map(&:to_i)
_, *v_f = gets.split.map(&:to_i)
_, *v_q = gets.split.map(&:to_i)
_, *v_b = gets.split.map(&:to_i)
k = gets.to_i
prices = get_prices(v_p, v_m, v_f, v_q, v_b)
puts sum_most_expensive(k, prices)

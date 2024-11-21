def fibonacci(n, memo)
  return memo[n] if memo[n].nonzero?
  memo[n] = (n < 2) ? n : fibonacci(n - 1, memo) + fibonacci(n - 2, memo)
  memo[n]
end

memo = [0] * 42
while (n = gets.to_i).nonzero?
  puts fibonacci(n + 1, memo)
end

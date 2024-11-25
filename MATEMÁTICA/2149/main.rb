def phill_bonati(n, memo)
  if memo[n].zero?
    memo[n] = if n < 2
      n
    elsif n.odd?
      phill_bonati(n - 1, memo) * phill_bonati(n - 2, memo)
    else
      phill_bonati(n - 1, memo) + phill_bonati(n - 2, memo)
    end
  end
  memo[n]
end

memo = [0] * 17
$stdin.map(&:to_i).each do |n|
  puts phill_bonati(n - 1, memo)
end

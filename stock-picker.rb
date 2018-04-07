def stock_picker(prices)
  result = ['', '', 0]

  (prices.length - 1).downto(0) do |i|
    0.upto(i) do |u|
      next unless prices[i] - prices[u] > result[2]
      result[0] = u
      result[1] = i
      result[2] = prices[i] - prices[u]
    end
  end
  profit = result.shift(2)
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1,4] for a profit of 15€ - 3€ == 12€

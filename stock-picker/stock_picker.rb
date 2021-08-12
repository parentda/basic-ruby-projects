def stock_picker(stock_price_array)
  min_price = { value: stock_price_array[0], index: 0 }
  max_profit = 0
  buy_sell_days = [0, 0]

  stock_price_array.each_with_index do |stock_price, index|
    if stock_price < min_price[:value]
      min_price[:value] = stock_price
      min_price[:index] = index
    elsif stock_price - min_price[:value] > max_profit
      buy_sell_days = [min_price[:index], index]
      max_profit = stock_price - min_price[:value]
    end
  end
  buy_sell_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
p stock_picker([1, 3, 6, 9, 15, 8, 6, 2, 17])
p stock_picker([17, 15, 13, 11, 9, 8, 6, 3, 1])

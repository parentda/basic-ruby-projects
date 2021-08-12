def stock_picker(stock_price_array)
  buy_day = 0
  sell_day = 0
  max_profit = 0

  stock_price_array.each_with_index do |stock_price, index|
    sell_day_options = stock_price_array.slice(index..)
    max_sell_price = sell_day_options.max
    if max_sell_price - stock_price > max_profit
      buy_day = index
      sell_day = sell_day_options.index(max_sell_price) + index
      max_profit = max_sell_price - stock_price
    end
  end
  [buy_day, sell_day]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

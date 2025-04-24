def stock_tracker(prices)
  day_to_buy = 0
  day_to_sell = 0
  profit = 0
  recommended_days = []
  prices.each_with_index do |price_A, day_A|
    prices.each_with_index do |price_B, day_B|
      if day_B > day_A
        if price_B - price_A > profit
          profit = price_B - price_A
          day_to_buy = day_A
          day_to_sell = day_B
        end
      end
    end
  end
  recommended_days.push(day_to_buy)
  recommended_days.push(day_to_sell)
  p recommended_days
end

stock_tracker([17,3,6,9,15,8,6,1,10])
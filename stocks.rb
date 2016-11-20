#method that takes an array of prices, one for each day sequentially
#return 2 days - the best day to buy, and the best day to sell

puts "Enter the prices for each day: "
prices = gets.chomp.split(',').map{ |value| value.to_i}
#print "prices: #{prices}"

def stock_picks(prices)
	max_diff, buy_day, sell_day, present_day = 0, 0, 0, 0
	
	while prices.length > 0
		present_price = prices.shift
		puts "present: #{present_price}"
		prices.each_with_index do |price, day|
			puts "price: #{price}"
			puts "present_price - price: #{present_price - price}"
			if present_price - price > max_diff
				buy_day = present_day
				sell_day = day + present_day + 1
				max_diff = present_price - price
			end
		end
		present_day += 1
	end

	puts "The day to buy is #{buy_day.to_s} and the day to sell is #{sell_day.to_s} for profit of $#{max_diff.to_s}"
	[buy_day, sell_day]
end

stock_picks(prices)
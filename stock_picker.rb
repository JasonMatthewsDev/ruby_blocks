def stock_picker(days)
	max = -1
	ret = []
	days.length.times do |x|
		days.length.times do |y|
			if days[y] - days[x] > max and y > x
				ret = [x, y]
				max = days[y] - days[x]
			end
		end
	end

	ret
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
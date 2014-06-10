require "wubit/version"

module Wubit
	def index_of_positions_for(string, regex)
		positions = string.enum_for(:scan, regex).map { Regexp.last_match.begin(0) } 
		return positions
	end

	def wubit(string)
		r = /([[^aeiou]&&[^\d\s]&&[^[:punct:]]])([aeiou])([[^aeiou]&&[^\d\s]&&[^[:punct:]]])/
		positions = index_of_positions_for(string, r)
			positions.each do | n |
				string[n] = "w"
				string[n+2] = "b"
			end
		return string
	end


	r = /([[^aeiou]&&[^\d\s]&&[^[:punct:]]])([aeiou])([[^aeiou]&&[^\d\s]&&[^[:punct:]]])/
	str = "You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man."

	puts "test for index_at_positions_for:  #{index_of_positions_for(str, r)}"
	puts "test for wubit:    #{wubit(str)}"
  
end

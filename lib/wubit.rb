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

end

class ::String
	include Wubit

	def wubcase
		wubit(self)
	end

	def wubcase!
		self.replace wubit(self)
	end


end

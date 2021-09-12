def time_string_helper(seconds)
	seconds_format=seconds % 60 #40
	minutes_format= (seconds / 60) > 60 ? (seconds / 60) - 60 : (seconds / 60) #06
	hours_format=seconds / 3600 #1
	
	seconds_formatted = seconds_format > 9 ? seconds_format : "0#{seconds_format}"
	minutes_formatted = minutes_format > 9 ? minutes_format : "0#{minutes_format}"
	hours_formatted = hours_format > 9 ? hours_format : "0#{hours_format}"
	"#{hours_formatted}:#{minutes_formatted}:#{seconds_formatted}"
end

class Timer
	attr_accessor :seconds

	def initialize()  #with def initialize can remove te @ symbol though attr reader
		@seconds = 0	
	end

	def time_string
		time_string_helper(seconds)
	end
end
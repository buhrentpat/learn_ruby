class Timer
  #write your code here

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end
	
	def time_string
		hours = (@seconds/3600)%60
		minutes = (@seconds/60)%60
		seconds = @seconds%60
		
		if hours >=9

			if minutes >=9

				if seconds >=9
					"#{hours}:#{minutes}:#{seconds}"
				else
					"#{hours}:#{minutes}:0#{seconds}"
				end

			else

				if seconds >=9
				"#{hours}:0#{minutes}:#{seconds}"
				else
				"#{hours}:0#{minutes}:0#{seconds}"
				end

			end

		else

			if minutes >=9

				if seconds >=9
					"0#{hours}:#{minutes}:#{seconds}"
				else
					"0#{hours}:#{minutes}:0#{seconds}"
				end

			else

				if seconds >=9
				"0#{hours}:0#{minutes}:#{seconds}"
				else
				"0#{hours}:0#{minutes}:0#{seconds}"
				end

			end
			
		end

	end

end

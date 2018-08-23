class Book 
# write your code here

	def title=(t)
		@title = t
	end

	def title
		if @title.include?(" ")
			words=@title.split.map do |word|
				if %w(and in the of a an).include?(word)
					word
				else
					word.capitalize
				end
			end
			words.first.capitalize!
			words.join(" ")

		else
			@title.capitalize
		end
	end


end



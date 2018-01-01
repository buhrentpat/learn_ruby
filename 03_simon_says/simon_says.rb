#write your code here

def echo (word)

	word

end

def shout (word)

	word.upcase

end

def repeat (word, num=2)

	(word + " ")*(num-1) + word

end

def start_of_word (word, num)
	
	word = word[0,num]

	word

end

def first_word (word)

	num = word.index(" ")

	word = word[0,num]

	word

end

def titleize (word)

	if word.include?(" ")
		word = word.split(" ")
		word.each do |i|
			i = i.capitalize!
		end
		word.join(" ")
	else
		word.capitalize!
	end

end

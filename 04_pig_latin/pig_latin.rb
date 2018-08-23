#write your code here


def translate phrase
  phrase.split.map do |word|

    # we are using "/x" to document this big fat regex
    word =~ /^     # beginning of string
    (
      [^aeiouyq]*  # any number of consonants in a row
      (qu)?        # or maybe a 'qu'
    )
    (.*)           # the rest of the string
    $/x            # end of string

    # $1, $2, etc. get filled with the parenthesized chunks
    # from the most recent regular expression match
    first_phoneme = $1
    rest_of_word = $3
    "#{rest_of_word}#{first_phoneme}ay"
  end.join(" ")
end

=begin
def translate (word)

	@vowel = ("a" || "e" || "i" || "o" || "u")


#break word up, pig latin each word, join word together

	if word.include?(" ")

		word = word.split.map do |word|

			if word[0] == "e"
				word = word + "ay"
			else
				wordStart = word[0,1]
				wordEnd = word[1..-1]
				word = wordEnd + wordStart + "ay"
			end	 
	
		end
		
		word.join(" ")

	else

		if word[0] == @vowel
			word = word + "ay"
		elsif word[1] != @vowel
			if word[2] != @vowel
				wordStart=word[0,3]
				wordEnd=word[3..-1]
				word = wordEnd+wordStart+"ay"
			else 
				wordStart = word[0,2]
				wordEnd = word[2..-1]
				word = wordEnd + wordStart + "ay"
			end
		else
			wordStart = word[0,1]
			wordEnd = word[1..-1]
			word = wordEnd + wordStart + "ay"
		end
	end
end

=end

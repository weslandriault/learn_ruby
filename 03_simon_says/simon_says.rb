def echo(something)
	something
end

def shout(something)
	something.upcase!
end

def repeat(something, repeat_number=2)

	phrase = "#{something} " * repeat_number
	phrase.strip
end


def start_of_word(word, number)
	word.split("")[0...number].join("")
end

def first_word(word)
	word.split[0]
end

def titleize(string)
	capitalized = ""
	excluded_words = %w(and over a the)
	string.capitalize.split.map do |word|
		if excluded_words.any? {|lil_word| lil_word == word}
			capitalized << word	+ " "
		else
			capitalized << word.capitalize + " "
		end
	end

	capitalized.strip
end
titleize("the is a string")
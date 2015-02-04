def translate(string)
	vowels = %w{a e i o u y}
	consonants = %w{b c d f g h j k l m n p q r s t v w x z}

	case
	when vowels.any? {|vowel| vowel == string.slice(0)}
		string << "ay"
	when consonants.any? {|consonant| consonant == string.slice(0)}
		if consonants.any? {|consonant| consonant == string.slice(1)}
			string << "#{string.slice!(0..1)}ay"
		else
			string << "#{string.slice!(0)}ay"
		end
	end
	
end

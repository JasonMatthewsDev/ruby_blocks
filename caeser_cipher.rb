def caeser_cipher(string, shift)
	ucase_letters = ("A".."Z").to_a
	lcase_letters = ("a".."z").to_a

	string.length.times do |i|
		ucase_index = ucase_letters.index(string[i])
		lcase_index = lcase_letters.index(string[i])

		if ucase_index
			ucase_index -= 26 if ucase_index + shift > 25
			string[i] = ucase_letters[ucase_index + shift] 
		elsif lcase_index
			lcase_index -= 26 if lcase_index + shift > 25
			string[i] = lcase_letters[lcase_index + shift] 
		end
	end

	string
end

puts caeser_cipher("What a string!", 5)
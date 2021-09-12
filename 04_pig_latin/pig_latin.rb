#write your code here

def translate(string)
	array_of_string = string.split(" ")
	if array_of_string.length > 1
		translate_many_words(string)
	else
		translate_one_word(string)
	end
end

def translate_one_word(string)
	vowels = ["a","e","i","o","u"]
	if vowels.include?(string[0]) #if the fisrt letter is a vowel
		string = string + "ay"
		string
  else
    final = ""
	  beginning_letters_array = string.split /[aeiou].*/ #letters before vowel
		beg = beginning_letters_array.join("") #now thtis is a string: sq
		if beg.include?("q")
			start_index = 0
			end_index = beg.length + 1
			final =  string.slice(end_index, string.length-1) + string.slice(start_index, end_index) + "ay"
			final
	  else
			start_index = 0
			end_index = beg.length 
			final =  string.slice(end_index, string.length-1) + string.slice(start_index, end_index) + "ay"
			final
    end
	end
end

def translate_many_words(string)
	final = ""
	array_of_words = string.split(" ")
	array_of_words.each do |word|
		translated_array = translate_one_word(word)
		final += translated_array + " "
	end
	puts "Class: #{final.class} #{final.strip.inspect}"
	final.strip
end

puts translate("banana")

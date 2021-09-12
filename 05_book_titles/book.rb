def titleize(book_title)
	articles = ["the", "a", "an", "and", "in", "of"]
	
	cap = book_title.capitalize #capitalize first word
	array_of_words = cap.split(" ")
	cap_words = array_of_words.each do|word| 
		if articles.include?(word)
		else
			word.capitalize!
		end
	end
	cap_words.join(" ")
end

class Book
	attr_writer :title

	def title()
		@title = titleize(@title) 
	end
end


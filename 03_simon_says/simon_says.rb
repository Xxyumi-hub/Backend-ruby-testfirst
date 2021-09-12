#write your code here
def echo(phrase)
    "#{phrase}"
end

def shout(phrase)
    "#{phrase.upcase}"
end

def repeat(phrase, number=2)
    complete_phrase = phrase + " "
    complete_phrase = complete_phrase * number
    complete_phrase.strip
end
puts repeat("hello", 3)
  
  
def start_of_word(string, number)
    string[0..number-1]
end
  
puts start_of_word("abcdefg",2)
  
def first_word(string)
    string.split.first
end
  
puts first_word("Hello world")
  
def titleize(string)
    little_words = ["the", "and", "over"]
      string = string.capitalize 
    word_array = string.split(" ")
    capitialized_words_in_array = word_array.each do|word| 
      if little_words.include?(word)
      else
        word.capitalize! # if word is not the and over then apitalize
      end
    end
    capitialized_words_in_array.join(" ")
end
  
puts titleize("the bridge over the river kwai")
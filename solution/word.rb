
#Takes in hidden word and guesses from snowman.
#Performs the guess checks by iterating through word string elements
#to see if it includes the guessed letter.

class Word

  def initialize(hidden_word)
    @hidden_word = hidden_word
  end

  def display(guesses = [])
    #parameter = string array from
    displayed_word = ""
    #local variable to store correct guesses (letters found during iterations)
    for char in @hidden_word.split('')
      # .split to split word into
      # for each character in the hidden_word
      if guesses.include?(char) || char == " "
      # calling the .include? method - if guesses include the character or character equals empty string
      # shovel the character into displyed word string
        displayed_word << char
      else
        #shovel asterix
        displayed_word << "*"
      end
    end
    return displayed_word
  end

  def include?(letter)
    # .include is already a defined array method (is this an override?)
    return @hidden_word.include?(letter)
  end

end

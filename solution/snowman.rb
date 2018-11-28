require_relative("./game")
require_relative("./word")
require_relative("./player")

puts "Please enter a secret word:"
input = gets.chomp
#input to store word in word object
hidden_word = Word.new(input)
#hidden_word object with input argument
snowman = Game.new(hidden_word, Player.new("Player 1"))
#new snowman object instantiated with hidden_word and player

print %x{clear} # TODO look up what this means


until snowman.is_won? || snowman.is_lost?
  #continues until game won or lost
  #determined by Game class
  puts "Welcome to Snowman!"
  puts "The hidden word is: #{snowman.reveal_word}"
  puts "#{snowman.lives_remaining} lives remaining"
  puts "Guess a letter:"
  snowman.guess(gets.chomp[0])
  #array argument value for hidden_word parameter
  print %x{clear}
end

puts "You win! The word was #{snowman.reveal_word}" if snowman.is_won?
puts "You suck! The word was #{input}" if snowman.is_lost?

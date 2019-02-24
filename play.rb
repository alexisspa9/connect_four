require "./lib/connect_four.rb"

puts "Welcome to Connect Four!"
puts "What is the first player's name?"
name_1 = gets.chomp
puts "What is the second player's name?"
name_2 = gets.chomp

new_game = ConnectFour.new(name_1, name_2)
new_game.play
require './players'
require './question'
require './random_number'


class Game
  attr_accessor :game, :input, :val_1, :val_2, :player1, :player2, :curr_player
  
  
  def initialize()
    @game
    @input = 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @curr_player = player1
    
  end

  def switch_player()
    if @curr_player == player1
      @curr_player = player2
      return
    @curr_player = player1
    end
  end


  def winner?()
    if player1.lives < 1
      puts "Congrats Player 2!"
      return
    end 
    if player2.lives < 1
      puts "Congrats Player 1!"
      return
    end 
    new_question
  end
  def new_question()
    val_1 = Random_number.new
    val_2 = Random_number.new
    puts "#{curr_player.name} it's your turn!"
    puts "What is #{val_1.value} + #{val_2.value}?"
    @input = gets.chomp
    if val_1.value + val_2.value == @input.to_i
      puts "That's correct!"
      puts "Player 1's lives:#{player1.lives}, Player 2's lives #{player2.lives}!"
      switch_player
      winner?
    else
      puts "Are you serious???"
      curr_player.lives -= 1
      puts "Player 1's lives:#{player1.lives}, Player 2's lives #{player2.lives}!"
      switch_player
      winner?
    end
  end

end
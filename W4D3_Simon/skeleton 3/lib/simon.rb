class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false 
    @seq = []

  end

  def play
    while true 
      result = take_turn
      break if !result
    end
    game_over_message 
    reset_game
  end

  def take_turn
    show_sequence
    user_input = require_sequence
    result = round_success_message(user_input)
    if result 
      @sequence_length += 1
    end 
    result 
  end

  def show_sequence
    add_random_color
    p @seq 
    sleep(1)
    system("clear")
  end

  def require_sequence
    p "What is the sequence?"
    user_input = gets.chomp.split(' ')
  end

  def add_random_color
    @seq << COLORS.sample 
  end

  def round_success_message(user_input)
    if user_input == @seq
      p "Congrats...onto next sequence"
      return true
    else 
      p "Oh nooo, incorrect sequence"
      return false 
    end 
  end

  def game_over_message
    p "Looks like you lost...game is over"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false 

  end
end

simon = Simon.new
simon.play 

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
      @sequence_length = 1
      @seq = []
      @game_over = false
  end

  def play
      until game_over
        take_turn
      end
      game_over_message
      reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    @seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "this round was a success"
  end

  def game_over_message
    puts "game over!"
  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1
  end
end
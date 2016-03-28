class Play
  attr_reader :seq
  attr_reader :guess
  attr_reader :guess_counter
  attr_reader :correct_positions
  attr_reader :correct_elements
  attr_reader :elapsed_time

  def initialize(num=4)
    @guess_counter = 0
    beginner_colors = ["r", "g", "b", "y", "r", "g", "b", "y", "r", "g", "b", "y", "r", "g", "b", "y"]
    @seq = beginner_colors.sample(num)
    Instructions.new.play_instructions_beginner
    @t1 = Time.now
    obtain_guess
  end

  def obtain_guess
    Instructions.new.enter_guess
    @input = gets.downcase.chomp
    @guess = @input.split(//)
    eval_game_input
  end

  def eval_game_input
    case
    when @guess == @seq
      @guess_counter += 1
      @t2 = Time.now
      @elapsed_time = @t2 - @t1
      End.new.end(seq, guess_counter, elapsed_time)
    when (@input == "p") || (@input == "play")
      Play.new
    when (@input == "c") || (@input == "cheat")
      Instructions.new.cheater(seq)
      StartMenu.new
    when (@input == "i") || (@input == "instructions")
      Instructions.game_instructions
    when (@input == "q") || (@input == "quit")
      Exit.new
    else
      eval_length
    end
  end

  def eval_length
    case
    when @guess.length == 4
      eval_chars
    when @guess.length < 4
      puts "You guess is too short, guess 4 letters!"
      obtain_guess
    when @guess.length > 4
      puts "Your guess is too long, guess 4 letters!"
      obtain_guess
    else
      Instructions.new.invalid_input
    end
  end

  def eval_chars
    @guess.each do |char|
      if (char == "r") || (char == "y") || (char == "g") || (char == "b")
        @guess_counter += 1
        Eval_guess.new(seq, guess, guess_counter).guess_checker
        obtain_guess
      else
        Instructions.new.invalid_guess
        obtain_guess
      end
    end
  end

end

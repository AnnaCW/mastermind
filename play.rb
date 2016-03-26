class Play
  attr_reader :seq
  attr_reader :guess
  attr_reader :guess_counter
  attr_reader :correct_positions
  attr_reader :correct_elements

  def initialize(num=4)
    @guess_counter = 0
    beginner_colors = ["r", "g", "b", "y", "r", "g", "b", "y", "r", "g", "b", "y", "r", "g", "b", "y"]
    @seq = beginner_colors.sample(num)
    obtain_guess
  end

  def obtain_guess
    puts "Enter your guess."
      #add basic instructions
    @guess = gets.downcase.chomp.split(//)
    @guess_counter += 1
    eval_game_input
  end

  def eval_game_input
    case
    when @guess == @seq
      puts 'win'
    when (@guess == "p") || (@guess == "play")
      puts 'play'
    when (@guess == "c") || (@guess == "cheat")
      puts 'cheat'
    when (@guess == "i") || (@guess == "instructions")
      Instructions.game_instructions
    when (@guess == "q") || (@guess == "quit")
      exit
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
        Eval_guess.new(seq, guess, guess_counter).guess_checker
        obtain_guess
      else
        puts "Invalid guess. Please try again."
        obtain_guess
      end
    end
  end

end

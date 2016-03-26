class End

  def end
    p "Congratulations! You guessed the sequence #{seq} in #{num_guesses} over #{num_minutes}, #{num_seconds}.
    Do you want to (p)lay again or (q)uit?"
    @end_input = gets.downcase.chomp
    eval_end_input
  end

  def eval_end_input
    case @end_input
      when "p" || "play"
        Play.new
      when "q" || "quit"
        Exit.new
      end
    end
end

class Exit

  def initialize
    puts "Exiting Mastermind."
    exit
  end
end


# Do you want to (p)lay again or (q)uit?
# If they enter 'p' or 'play' then restart the game. 'q' or 'quit' ends the game.

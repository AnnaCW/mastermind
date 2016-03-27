
class End

  def end(seq, guess_counter, elapsed_time)
    Instructions.new.end_message(seq, guess_counter, elapsed_time)
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

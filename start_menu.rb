class StartMenu
  def initialize
    Instructions.new.welcome
    @input_start = gets.downcase.chomp
    eval_input_start
  end

  def eval_input_start
    case @input_start
      when "p" || "play"
        Play.new
      when "q" || "quit"
        Exit.new
      when "i" || "instructions"
          Instructions.new.game_instructions
          @input_play_or_quit = gets.downcase.chomp
          eval_input_play_or_quit
      end
    end
  end

  def eval_input_play_or_quit
      case @input_play_or_quit
        when "p" || "play"
          Play.new
        when "q" || "quit"
          Exit.new
        else
          Instructions.new.invalid_input
        end
  end

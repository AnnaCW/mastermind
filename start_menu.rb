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
        exit
      when "i" || "instructions"
          Instructions.new.game_instructions
          puts "Would you like to (p)lay or (q)uit?"
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
          exit
        else
          Instructions.new.invalid_input
        end
  end




# class StartMenu
#
#   def initialize
#     puts "Welcome to MASTERMIND"
#     puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
#     input_start = gets.downcase.chomp
#
#     case input_start
#       when "q" || "quit"
#         #EXIT
#       when "i" || "instructions"
#         puts "game instructions"
#           #REPLACE WITH LINK TO INSTRUCTIONS FILE
#         puts "Would you like to (p)lay or (q)uit?"
#         input_play_or_quit = gets.downcase.chomp
#           case input_play_or_quit
#             when "p" || "play"
#               # EvalInput.new
#             when "q" || "quit"
#               # Exit.new
#           end
#         when "p" || "play"
#           #PLAY
#         else
#           StartMenu.new
#       end
#     end
# end
#
# StartMenu.new
  #If they enter p or play then they enter the game flow described below.
  # If they enter i or instructions they should be presented with a short explanation of how the game is played.
  # If they enter q or quit then the game should exit

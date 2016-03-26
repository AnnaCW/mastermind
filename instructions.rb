class Instructions

  def welcome
    puts "Welcome to MASTERMIND!"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def game_instructions
    puts "Mastermind is played by guessing a secret sequence of colors made up of (r)ed, (g)reen, (b)lue, and (y)ellow. A sequence may contain any combination of colors. It may contain all four colors or only one. You win by guessing the correct combination of colors and their positions. For each sequence you guess, I will tell you how many colors are correct, and how many are in the correct positions. You may then guess again."
  end

  def play_instructions_beginner
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess? Enter a guess in the form 'rrgb'."
  end

  def invalid_input
    puts "The command you entered is not valid. Would you like to (p)lay or (quit)?"
  end
end

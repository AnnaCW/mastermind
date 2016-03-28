
class Instructions

  def welcome
    puts "Welcome to MASTERMIND!"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def game_instructions
    puts "Mastermind is played by guessing a secret sequence of colors made up of (r)ed, (g)reen, (b)lue, and (y)ellow. A sequence may contain any combination of colors. It may contain all four colors or only one. You win by guessing the correct combination of colors and their positions. For each sequence you guess, I will tell you how many colors are correct, and how many are in the correct positions. You may then guess again."
    puts "Would you like to (p)lay or (q)uit?"
  end

  def play_instructions_beginner
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. Guesses should be in the form 'rrgb'."
  end

  def enter_guess
    puts "What is your guess?"
  end

  def invalid_input
    puts "The command you entered is not valid. Would you like to (p)lay or (q)uit?"
  end

  def invalid_guess
    puts "Invalid guess. Please try again."
  end

  def cheater(seq)
    puts "Cheater! Here is the secret sequence:#{seq.join}"
  end

  def feedback_message(guess, correct_elements, correct_positions, guess_counter)
    puts "'#{guess.join.upcase}' has #{correct_elements} correct element(s) with #{correct_positions} in the correct position(s)."
    puts "You have taken #{guess_counter} guess(es)."
    puts "Guess again!"
  end

  def end_message(seq, guess_counter, elapsed_time)
    min = (elapsed_time / 60).round
    sec = (elapsed_time % 60).round
    puts "Congratulations! You guessed the sequence #{seq.join.upcase} in #{guess_counter} guess(es) over #{min} minutes, #{sec} seconds.
    Do you want to (p)lay again or (q)uit?"
  end

end

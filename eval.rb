class Eval_guess

  def initialize(seq, guess, guess_counter)
    @seq = seq
    @guess = guess
    @guess_counter = guess_counter
  end

  def guess_checker
    eval_valid_guess_positions
    eval_valid_guess_elements
    feedback
  end

  def eval_valid_guess_positions
    i = 0
    @correct_positions = 0
    # correct_array = []
    while i < @guess.length
      if @seq[i] == @guess[i]
      # correct_array[i] = @guess[i]
        @correct_positions += 1
      end
      i += 1
    end
    @correct_positions
  end

  def eval_valid_guess_elements
    @g_array = []
    @s_array = []
    @correct_elements = 0

    @guess.each do |g_color|
      @g_array << g_color
    end

    @seq.each do |s_color|
      @s_array << s_color
    end

    @g_array.each do |i|
      x = 0
      if i == @s_array[x]
        match(i, x)
      else
        x += 1 while x < @s_array.length end
        match(i, x)
      end
  end

  def match(i, x)
    @g_array.delete(i)
    @s_array.delete_at(x)
    @correct_elements += 1
  end

  # def eval_valid_guess_elements
  #   total = 0
  #   x = @seq
  #   @guess.each do |color|
  #     x.each do |i|
  #       y = x.index(i)
  #         if color == i
  #           x.delete_at(y)
  #           total += 1
  #         end
  #     end
  #   end
  #   @correct_elements = total
  # end

  def feedback
    p "seq is #{@seq}"
    puts "#{@guess} has #{@correct_elements} correct elements with #{@correct_positions} in the correct position(s)."
    p "You have taken #{@guess_counter} guess(es)."
    p "Guess again!"
  end

end

# class Eval_Initial_Input
#
#   def guess
#     puts 'guess'
#       guess = gets.chomp
#     end
#
#   def win?
#     if guess == seq
#         true
#     end
#
#   def play?
#     if (guess == "p") || (guess == "play")
#         true
#     end
#
#   def cheat?
#     if (guess == "c") || (guess == "cheat")
#         true
#     end
#
#   def instructions?
#     if (guess == "i") || (guess == "instructions")
#       true
#     end
#
#   def quit?
#     if (guess == "q") || (guess == "quit")
#       true
#     end
# end


# else
#   length?
# end
# end

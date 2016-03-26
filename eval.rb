class Eval_guess

  attr_reader :seq
  attr_reader :guess
  attr_reader :guess_counter
  attr_reader :correct_positions
  attr_reader :correct_elements

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
    while i < @guess.length
      if @seq[i] == @guess[i]
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

    @g_array.each do |g|
      if g == @s_array[0]
        @s_array[0] = nil
        @g_array[@g_array.index(g)] = nil
        @correct_elements += 1

    elsif g == @s_array[1]
        @s_array[1] = nil
        @g_array[@g_array.index(g)] = nil
        @correct_elements += 1

    elsif g == @s_array[2]
        @s_array[2] = nil
        @g_array[@g_array.index(g)] = nil
        @correct_elements += 1

      elsif g == @s_array[3]
          @s_array[3] = nil
          @g_array[@g_array.index(g)] = nil
          @correct_elements += 1
      end
    end
  end

  def feedback
    Instructions.new.feedback_message(guess, correct_elements, correct_positions, guess_counter)
  end

end

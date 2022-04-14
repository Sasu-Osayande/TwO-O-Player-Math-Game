class Question
  def initialize
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @sum = @num_1 + @num_2
  end

  def ask_question(name)
    puts "#{name}: what does #{@num_1} plus #{@num_2} equal"
  end

  def question_right?(input)
    @sum == input
  end
end
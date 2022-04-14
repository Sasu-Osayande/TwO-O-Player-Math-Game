class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)

    print '> '

    @input = $stdin.gets.chomp.to_i
    if new_question.question_right?(@input)
      puts 'YES! You are correct.'
    else
      puts 'Seriously? No!'
      lose_life
    end
  end
end


module GameConstants
  MAX_LIVES = 2
end

class Game 
  include GameConstants
  attr_reader :title, :player1, :player2, :current_player
  attr_accessor :game_over

  def initialize(title, player1, player2)
    @title = title
    @player1 = player1
    @player2 = player2
    self.game_over = false
  end

  def start
    while !self.game_over
      # current_player = Turn.new(self) # this line can be used to replace the next two lines if we decide to use the Turn class, but I think it's overkill, and the code is more readable without it
      current_player = current_player == nil || current_player == player2 ? player1 : player2
      puts "\n .... NEW TURN #{current_player.name} ...."
      question = Question.new
      puts "#{current_player.name}: #{question.prompt}"
      player_answer = current_player.play(question)
      self.update_scores(current_player, player_answer, question.correct_answer )
      self.check_game_over 
    end
    self.print_result
  end

  def update_scores(current_player, player_answer, correct_answer)
    puts "#{current_player.name} anwered: #{player_answer}, correct answer is #{correct_answer}"

    if player_answer == correct_answer
      puts "correct!!!"
    else
      current_player.lives -= 1
      puts "wrong answer!"
    end
    current_player.games_plaid += 1
  end

  def check_game_over
    if (self.player1.lives == 0 || self.player2.lives == 0) && (self.player1.games_plaid == self.player2.games_plaid)
      self.game_over = true
    end
  end

  def winner
    if self.player1.lives > self.player2.lives
      self.player1
    elsif self.player2.lives > self.player1.lives
      self.player2
    else
      nil
    end
  end

  def print_result
    if self.winner != nil
      puts "#{self.winner.name} wins with a score of #{self.winner.lives}/#{MAX_LIVES}"
    else
      puts "The game was a tie, there is no winner"
    end
  end
end



class Player 
  include GameConstants
  attr_accessor :name, :lives, :games_plaid

  def initialize(name)
    self.name = name
    self.lives = MAX_LIVES
    self.games_plaid = 0
  end

  def play(question)
    answer = self.get_player_input(question.prompt)
  end

  def get_player_input(prompt)
    Integer(gets.chomp)
  rescue ArgumentError
    puts "try again, answer must be an integer value"
    puts prompt
    get_player_input(prompt)
  end
end



class Question
  attr_reader :prompt, :correct_answer

  def initialize
    num1 = [*1..20].sample
    num2 = [*1..20].sample
    @prompt = "what is #{num1} + #{num2} ?"
    @correct_answer = num1 + num2
  end

end


# class Turn
#   def initialize(game)
#     current_player = game.current_player == nil || game.current_player == game.player2 ? game.player1 : game.player2
#     puts "\n .... NEW TURN #{current_player.name} ...."
#     return current_player
#   end
# end

# =begin
player1 =  Player.new('Abiran');
player2 =  Player.new('Birmi');
game1 =  Game.new('Two-O-Player Math Game 1.0', player1, player2);

game1.start
# =end

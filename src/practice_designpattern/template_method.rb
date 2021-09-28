class BaseballPlayer

  def play
    swing_arm
    puts "振りかぶりました"
    throw_ball
    puts "投げました"
    adding_method

  end

  def swing_arm
    raise  NotImplementedError.new
  end

  def throw_ball
    raise  NotImplementedError.new
  end
  
  def adding_method
  end

end

class Ootani < BaseballPlayer

  def swing_arm
    puts "ストレート"
  end

  def throw_ball
    puts "160kilo"
  end
  
end

o = Ootani.new
o.play
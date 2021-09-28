class BaseBallStrategy
  def play
    raise  NotImplementedError.new
  end
end

class FourBallStrategy < BaseBallStrategy
  def play
    puts "四球戦法"
  end
end

class StraghtStrategy < BaseBallStrategy
  def play
    puts "直球勝負"
  end
end

class BaseballContext

  def initialize(strategy)
    @strategy = strategy
  end

  def execute
    puts "試合開始"
    @strategy.play
  end


end

bc = BaseballContext.new(FourBallStrategy.new)
bc.execute
class Strategy

  def exec
    raise  NotImplementedError.new
  end
end

class S1 < Strategy

  def exec
    puts "S1"
  end

end

class Context 

  def initialize(strategy)
    @strategy = strategy
  end

  def exec
    @strategy.exec
  end

end

c = Context.new(S1.new)
c.exec
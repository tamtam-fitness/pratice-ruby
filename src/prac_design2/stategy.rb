class Strategy

  def exec
    raise  NotImplementedError.new
  end
end

class CS1 < Strategy
  def exec
    puts "hello 123"
  end
end

class Context

  def initialize(strategy)
    @strategy = strategy
  end

  def exec
    puts "context"
    @strategy.exec
  end
end

con = Context.new(CS1.new)
con.exec
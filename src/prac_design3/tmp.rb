class Tmp

  def exec
    a
    b
    other
  end

  def a
    raise  NotImplementedError.new
  end

  def b
    raise  NotImplementedError.new
  end

  def other
  end

end

class Con < Tmp

  def a
    puts "a"
  end

  def b
    puts "b"
  end

end

t = Con.new
t.exec
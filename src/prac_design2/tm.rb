class Abs 

  def exec
    puts "do_1"
    do_1
    puts "do_2"
    do_2

  end

  def do_1
    raise  NotImplementedError.new
  end

  def do_2
    raise  NotImplementedError.new
  end

end

class Con < Abs 

  def do_1
    puts "111111"
  end


  def do_2
    puts "222222"
  end

end

c = Con.new
c.exec


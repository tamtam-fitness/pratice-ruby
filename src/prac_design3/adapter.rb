class Something
  def exec
    puts "hello"
  end
end

class Rapper

  def initialize
    @something = Something.new
  end

  def exec
    @something.exec
    puts "teaogja;dflbajl"
  end


end

r = Rapper.new
r.exec
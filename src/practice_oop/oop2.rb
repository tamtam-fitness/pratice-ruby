#クラス ポリモーフィズム, 継承 : Fish Saba Hugu 
class Fish 
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def swim
  end

end


class Saba < Fish 

  def swim
    return "#{self.name}はサバで、味噌煮が美味しいです"
  end

end

class Hugu < Fish 

  def swim
    return "#{self.name}はふぐで、毒があります"
  end

end


def cutFish(fish)
  puts "調理するもの: #{fish.swim}"
end

[Saba.new("Python"), Hugu.new("Java")].each do |fish|
  cutFish(fish)
end

class Subject
  
  attr_accessor :field

  def initialize
    @observers = []
  end

  def notify
    @observers.each do |observer|
      observer.update(self)
    end

  end

  def attach(observer)
    @observers.append(observer)
    puts "attached"
  end

  def exec
    @field = "test"
    notify
  end

end

class Observer

  def update(subject)
    puts "observer"
    puts subject.field
  end

end

s = Subject.new
o= Observer.new
s.attach(o)
s.exec

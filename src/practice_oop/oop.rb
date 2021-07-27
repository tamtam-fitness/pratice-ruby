#オリンピック選手で インスタンス変数nameとメソッドplayをもつ選手クラスを基底クラスとする、水泳選手とボクシング選手を実装し、彼らを共通メインルーチンで呼び出し、playメソッドを呼び出せ。
#　ただし、クラス, ポリモーフィズム, 継承の概念を使うこと。 
# https://qiita.com/shizen-shin/items/09cf07f9b9f5c4977a14

#http://kamiyasu2.blog.fc2.com/blog-entry-35.html

#https://www.javadrive.jp/ruby/inherit/index2.html


#https://qiita.com/shogo-1988/items/e749208c0733bbe025c0
class Athlete

  attr_accessor :name

  def initialize(name)
    self.name = name
  end
  
  def play
  end

end

class Boxer < Athlete

  attr_accessor :weight

  def initialize(name, weight)
    super(name)
    self.weight = weight
  end

  def play
    puts "#{self.name}は #{self.weight}kgです"
  end

end

class Swimmer < Athlete

  attr_accessor :skill

  def initialize(name, skill)
    super(name)
    self.skill = skill
  end

  def play
    puts "#{self.name}は #{self.skill}が得意です"
  end

end

def explain(athlete)
  athlete.play
end

a1 = Boxer.new("Asakura", 64)

a2 = Swimmer.new("Seto", "Back swim")

explain(a1)
explain(a2)
### 復習, 継承 クラス , ポリモーフィズム
class Name
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(attributes={})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
  end

end

class User
  attr_accessor :name
  attr_accessor :age

  def initialize(attributes={})
    @name = attributes[:name]
    @age = attributes[:age]
  end

  def say
  end

end

class Teacher < User

  def say
    puts "こんにちはこのクラスの担任の:#{@name.last_name} #{@name.first_name} です。#{@age} 歳です"
  end
end

class Student < User
  def say
    puts "先生こんにちは、:#{@name.last_name} #{@name.first_name} です。#{@age} 歳です"
  end
end

student_name = Name.new(first_name: "Densuke", last_name: "Fitness")
teacher_name = Name.new(first_name: "ゆうすけ", last_name: "たむら")

def introduce(user)
  user.say
end

[Teacher.new(name: teacher_name, age: 25), Student.new(name: student_name, age: 18) ].each {|user| introduce(user)}
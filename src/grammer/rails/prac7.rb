require 'active_support/all'

puts nil.blank?

name = nil
puts name.blank?
name = ""
puts name.blank?

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new(nil)
name = user.name.presence || "tamutamu"
puts name

if name = User.new("Yusuke").name.presence
  puts "Hello #{name}"
end

email = ""

if email.blank?
  puts "Not Found"
end

# map で　コードベースで処理するのではなく、plunkでdbベースでできる
# def admin_user_ids
#   User.where(admin: true).pluck(:id)
# end

class Person
  attr_accessor :name
  attr_accessor :age

end

def build_person
  Person.new do |person|
    person.name = "Yusuke"
    person.age = 18
  end
end

p = build_person

puts p.name
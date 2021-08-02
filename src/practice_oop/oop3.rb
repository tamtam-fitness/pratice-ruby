class Language
  attr_accessor :name
  attr_accessor :kind

  def initialize(attribute = {})
    @name = attribute[:name]
    @kind = attribute[:kind]
  end

  def print
    puts self.name + "|" + self.kind
  end

end

class ProgramLanguage
  attr_accessor :language

  def initialize(language)
    @language = language
  end

  def call_method
  end
end

class Python < ProgramLanguage

  def call_method
    "#{self.language.name}: #{self.language.kind},  print('hello')"
  end

end


class Java  < ProgramLanguage

  def call_method
    "#{self.language.name}: #{self.language.kind}, system.out.Println "
  end
end


def do_polymofism(prog_lang)
  puts prog_lang.call_method
end


p_l = Language.new(name: "Python",kind: "dynamic")
p_l.print
python = Python.new(p_l)

l_j = Language.new(name: "Java",kind: "static")
java = Java.new(l_j)

[python, java].each {|lang| do_polymofism(lang)}
# class Language

#   def initialize(attribute = {name: "",kind: ""})
#     self.name = attribute[:name]
#     self.kind = attribute[:kind]
#   end

#   def print
#     puts self.name + "|" + self.kind
#   end

# end

# class ProgramLanguage

#   def initialize(language)
#     self.language = language
#   end

#   def call_method
#   end
# end

# class Python

#   def call_method
#     "#{self.Language.name}: #{self.Language.kind},  print('hello')"
#   end

# end


# class Java

#   def call_method
#     "#{self.Language.name}: #{self.Language.kind}, system.out.Println "
#   end
# end


# def do_polymofism(prog_lang)
#   puts prog_lang.call_method
# end


# p_l = Language.new(name: "Python",kind: "dynamic")
# p_l.print
# python = Python.new(p_l)

# l_j = Language.new(name: "Java",kind: "static")
# java = Java.new(l_j)

# [python, java].each {|lang| do_polymofism(lang)}
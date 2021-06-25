# https://tagamidaiki.com/ruby-debugging-gem-pry/
require "pry"

class Sample
    def hellp_pry
        hello = "Hello"
        binding.pry
        hello
    end
end

puts Sample.new.hellp_pry

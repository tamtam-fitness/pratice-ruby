puts "abc".upcase

puts "abc".tap { |string| string.upcase }
# tapは「メソッドの中で何かしたいけど、メソッド自体の評価は変えたくない」時に使う。
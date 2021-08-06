puts "abc".upcase

puts "abc".tap { |string| string.upcase }
# tapは「メソッドの中で何かしたいけど、メソッド自体の評価は変えたくない」時に使う。
# { }ブロック内で処理を実行し、処理結果に関わらずレシーバ自身を返すメソッドです。
# 以下3点が解れば大丈夫かと。
puts self.tap{} 

puts self.tap{ puts "hoge" } 

puts self.tap{ break :hoge } 

# https://qiita.com/you8/items/e5f5c27cfed60a23fa75# 例えば以下の例では car が run メソッドのレシーバーとなります。

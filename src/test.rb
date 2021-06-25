# 大きな数値を宣言する場合、"_"を入れて読みやすくする
# ITEM_LIMIT = 1000000000
# ITEM_LIMIT = 1_000_000_000


# 単純なgetterメソッドを定義する代わりに、attr_readerを使う
# class Person
#     def initialize
#         @name = "No Name"
#     end
# end
# p1 = Person
# puts Person.name


# # 要素の順番に意味がある配列は、同時に別々の変数で受け取る
# q, r =  19.divmod(3)
# puts "商: #{q}, 余: #{r}"
# {name: 'Tom',   age: 19, }.each do |k, v|
#     puts "k: #{k}, v: #{v}"
# end


# #配列を連結するのに+ではなく、*(splat)を使う
# numbers = Array(1..5)
# puts numbers.class
# numbers_with_zero_and_100 = [0, *numbers, 100]
# puts numbers_with_zero_and_100


# ハッシュのキーには文字列ではなくシンボルを使う
currencies = {
    japan: "yen", 
    america: "doll", 
}
puts currencies[:japan]
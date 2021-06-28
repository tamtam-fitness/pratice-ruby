# https://qiita.com/jnchito/items/dedb3b889ab226933ccf#nil%E3%81%8B%E9%85%8D%E5%88%97%E3%81%8B%E3%82%92%E5%8C%BA%E5%88%A5%E3%81%9B%E3%81%9Aarray-%E3%81%A7%E5%87%A6%E7%90%86%E3%81%97%E3%81%A6%E3%81%97%E3%81%BE%E3%81%86


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


# # ハッシュのキーには文字列ではなくシンボルを使う
# currencies = {
#     japan: "yen", 
#     america: "doll", 
# }
# puts currencies[:japan]


# # private 以下の行にクラスメソッドを定義して、privateなクラスメソッドを作ったと勘違いしない
# class User
#     private

#     def secret_name
#         "secret!"
#     end

#     def self.secret_data
#         "secret!!"
#     end


#     private_class_method :secret_data
# end

# user = User.new
# # user.secret_name
# puts User.secret_data


# # privateメソッドはそのクラスでしか呼び出せない、と勘違いしない
# class Item
#     private

#     def secret_price
#         1000
#     end
# end

# class Book < Item
#     def public_price
#         secret_price
#     end
# end

# book = Book.new
# puts book.public_price


# # size - 1ではなく、マイナスのインデックスで最後の文字や要素を指定する
# numbers = Array(1..5)
# name = "Densuke Fitness"
# puts numbers[-1]
# puts name[1..-3]



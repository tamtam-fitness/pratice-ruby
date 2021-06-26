# https://qiita.com/jnchito/items/dedb3b889ab226933ccf#%E5%BE%8C%E7%BD%AEif%E3%81%A7%E8%A1%8C%E6%95%B0%E3%82%92%E6%B8%9B%E3%82%89%E3%81%99

# 後置ifで行数を減らす
count = 0
practiced = true
count += 1 if practiced
puts count 


# if + notではなく、unlessを使う
user_found = nil
puts "Not Found" unless user_found  


# 三項演算子を使って行数を減らす
gender = "men"
gender == "men" ? result = 0 : result = 1
puts result


# == trueや== false、== nilを明示的に書かない
puts "good" if practiced
   
# 代入してからifで存在を確認、をまとめて書く
def find_user
    name =  "Densuke"
    name
end

if name = find_user
    puts "found: #{name}"
end


# メソッドの戻り値を返すときにreturnを使わない
def hope_happy(name)
    message = "I will hope #{}'s life be happy"
    message
end
puts hope_happy("Densuke")


# 「初期化、プロパティセット、戻り値として返す」の代わりにObject#tapを使う
# "+”ではなく"#{ }"で文字列を連結する
class User
    attr_accessor :name
    attr_accessor :age
end

def buid_user
    User.new.tap do |user|
        user.name = "Densuke"
        user.age = 22
    end
end

user = buid_user
puts "#{user.name}, #{user.age}"


# 複数行にわたる文字列はヒアドキュメントを使う
require "date"

def call_greeting_sentence(name)
    text = <<-TEXT
    Good Morning #{name} !!
    Today is #{Date.today} .
    TEXT
    text
end

puts call_greeting_sentence("Densuke")


# 定数はfreezeさせる
# 文字列の場合
CONTACT_PHONE_NUMBER = "03-1234-5678".freeze
# 配列の場合
ADMIN_NAMES = ["Tom", "Alice"].freeze.each(&:freeze)
# 整数の場合
# エラーにはならないが、あまり意味が無い
ITEM_LIMIT = 500.freeze


# 配列やハッシュを初期化する際、最後の要素をあえてカンマ付きで書いておく
currencies = {
    japan: "yen",
    america: "doller",
    france: "euro",
}


# 配列を作るとき、[ ]の代わりに%w( )、%i( )を使う
# actions = ['index', 'new', 'create']
actions = %w(var lib docker)
puts actions

syms = %i(var lib docker)
puts syms

# "object.method"の代わりに"&:method"を使う
numbers = Array(1..10)
puts numbers.map(&:to_s).join('')
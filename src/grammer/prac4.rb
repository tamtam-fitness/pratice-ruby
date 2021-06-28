# https://qiita.com/jnchito/items/dedb3b889ab226933ccf#%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E6%83%85%E5%A0%B1%E6%BA%90

### その他の情報源

# 英語の文法や品詞を意識する
# 配列の変数名や配列を返すメソッド名は原則複数形にする
nums = Array(1..6)
puts nums.select(&:even?)

# reserve=予約する(動詞)、reserved=予約済みである(形容詞)
# # chair.reserve?
# chair.reserved? # => false

# 直接実行したときだけ実行し、requireされたときは実行しないコードを書く
def hello(name)
    puts "Hello, #{name}!"
  end
  
#   if __FILE__ == $0
if __FILE__ == $PROGRAM_NAME
    hello("Alice")
end
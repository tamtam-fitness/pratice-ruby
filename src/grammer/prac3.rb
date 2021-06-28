# https://qiita.com/jnchito/items/dedb3b889ab226933ccf#%E9%85%8D%E5%88%97%E3%81%AE%E4%BE%BF%E5%88%A9%E3%81%AA%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89%E3%81%84%E3%82%8D%E3%81%84%E3%82%8D
### 配列の便利なメソッドいろいろ

# # find: 最初に見つかったものを返す
numbers = Array(2..8)
# puts numbers.find(&:odd?)

# select: 条件に合うものすべてを返す
puts numbers.select(&:odd?)

# count: 条件に合う要素の数を返す
puts numbers.count(&:even?)

# map: ある配列から別の配列を作る
puts numbers.map(&:to_i)

# flat_map: mapの結果をネストしないフラットな配列として受け取る
nested_array = [[1, 2, 3], [4, 5, 6]]
flat_array = nested_array.flatten
puts flat_array
flat_array = nested_array.flat_map {|array| array.map {|n| n * 10 } }
puts flat_array

# compact: nil以外の要素を集める
numbers_and_nil = [1, 2, 3, 4, 5, nil, nil, 6, nil, nil]
only_numbers = numbers_and_nil.reject(&:nil?) 
puts only_numbers

numbers_and_nil = [1, 2, 4, nil, nil, 8]
only_numbers = numbers_and_nil.compact
puts only_numbers

# any?: 最低でも1つ条件に合う要素があればtrueを返す
puts numbers_and_nil.any?(&:odd?)

# empty?: 1件もなければtrueを返す
users = []
puts "empty!" if users.empty?

# first/last: 最初と最後の要素を返す
one_to_handred = Array(1..100)

first_user = one_to_handred.first
last_user = one_to_handred.last
puts first_user
puts last_user

# sample: 任意の要素を返す
puts one_to_handred.sample

# each_with_index: eachでループしつつ、カウンタも同時に取得する
users = ["a", "b", "c"]
users.each_with_index do |user, counter|
    puts "#{counter}: #{user}"
  end

# ループ処理系のメソッド + with_index: カウンタ付きで元のループ処理を実行する
users_with_index = users.map.with_index(1) do |user, counter|
    [counter, user]
  end
puts users_with_index

# join: 配列を1つの文字列として返す
puts users.join("") 

# max/max_by: 最大の要素を返す
puts numbers.max

# each_with_object: ループを回しつつ、別のオブジェクトを組み立ててそれを返す

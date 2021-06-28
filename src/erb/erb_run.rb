# https://qiita.com/mksava/items/dc34749268513fd75bf0
require "erb"

# erb = ERB.new("好きな文字列")
# puts erb.result
# erb = ERB.new('はじめての <%= "erb".upcase %>の実行')
# puts erb.result

# index.html の中身を文字列で取得する
index_html = File.read("index.html")

# ERB実行
erb = ERB.new(index_html)
puts erb.result
# Rails編

require 'active_support/all'

puts nil.blank? # => true


# https://qiita.com/YumaInaura/items/b26b4fe589405948da4b
# singletonクラス

# # childrenがnilならtry(:singleton?)はnilを返す
# # nilでなければ、children.singleton?が普通に呼ばれる
# if parent.children.try(:singleton?)
#   singleton = parent.children.first
#   send_mail_to(singleton)
# end

# name = nil
# name.blank? # => true
# name = ""
# name.blank? # => true
# name = " "
# name.blank? # => true

# params = nil
# params.blank? # => true
# params = {}
# params.blank? # => true

# numbers = nil
# numbers.blank? # => true
# numbers = []
# numbers.blank? # => true

name = ""
puts name.present?
name = "Ysuuke"
puts name.present?

# ### 空なら別の値を代入」の代わりにpresenceを使う
# if user.name.blank?
#   name = "What's your name?"
# else
#   name = user.name
# end

# "".presenceや[].presenceはnilを返すので注意してください。(blank?かどうかを判別しているため)
# https://techacademy.jp/magazine/20210]
name = ""
name = name.presence || "What's your name?"
puts name 
# presenceがtrueの場合、そのままnameのコピーしたローカルの値を返す


# # Newsが1件でも存在すればメール送信＆ツイート発信
# if good_news = company.good_news.presence
#   send_mail(good_news)
# end

# 存在の有無を確認する場合はblank?/present?を積極的に使う
# if user.present?
# end

# if users.present?
# end

# # 文字列の存在チェックはnil?ではなく、blank?を積極的に使う
# if email.blank?
#   puts "please input email"
# end

# 配列を順番に処理するとき、直接メソッドを呼ぶ代わりに"&method(:name)"を使う
# def process_users
#   users.each(&method(:process_user))
# end

# def process_user(user)
#   send_mail_to(user)
#   user.mail_sent_at = Time.now
#   user.save
# end

#Ruby編で配列の便利なメソッドをいろいろ紹介しましたが、RailsのModelをフィルタリングしたい場合は配列を操作するのではなく、
#データベース(SQL)上でフィルタリングした方が効率的です。

# User.all.select(&:admin?) => User.where(admin: true)

# User.where(admin: true).map(&:id) => 取り出して抽出というより   User.where(admin: true).pluck(:id)

# User.new do |user|
#  ActiveRecordであれば new に直接ブロックを渡して、プロパティをセットすることができます。
#   user.email = "hoge@hoge.com"
#   user.name = "Taro Yamada"

puts Date.current # => Tue, 05 Nov 2013
puts Date.yesterday  # => Tue, 04 Nov 2013
puts Date.tomorrow # =>  # => Tue, 06 Nov 2013

puts 2.years.ago   # => 2011-11-05 06:21:40 +0900
puts 2.years.since # => 2015-11-05 06:21:40 +0900

puts 2.months.ago   # => 2013-09-05 06:21:40 +0900
puts 2.months.since # => 2014-01-05 06:21:40 +0900

puts "my_book".camelize
puts "MyBook".underscore 
puts "my_book".dasherize 
puts "person".pluralize          

puts "    My    \r\n  \t   \n   books       ".squish
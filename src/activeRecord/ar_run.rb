# activerecord の読み込み
require "active_record"
# mysql2の読み込み
require "mysql2"

# DB接続設定
ActiveRecord::Base.establish_connection(
  adapter:  "mysql2",
  database: "active_record_test",
  host: "mysql-for-ar",
  port: "3306",
  username: "root",
  password: "root",
)

class User < ActiveRecord::Base
    self.table_name = "users"
end


# puts User.create(id: 1, name: "banana", age: 12)

# id が1のレコードを一件取得する
user = User.find_by(id: 1)

# テーブルのカラム名と同じメソッドを呼び出すと、取得したレコードの値を返してくれる
puts user.id
puts user.name
puts user.age
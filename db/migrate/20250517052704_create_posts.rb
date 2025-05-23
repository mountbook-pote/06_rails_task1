class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :begin
      t.date :end
      t.string :allday
      #t.string :schedule_memo (追記)２重追加のためコメントアウト（＝削除）→元は後からカラムを追加して、後から書き加えたコードになる
      t.timestamps
    end
  end
end

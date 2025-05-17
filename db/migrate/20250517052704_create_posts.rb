class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :begin
      t.date :end
      t.string :allday
      t.string :schedule_memo #後からカラムを追加して、後から書き加えたコードになる
      t.timestamps
    end
  end
end

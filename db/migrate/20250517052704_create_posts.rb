class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :begin
      t.date :end
      t.string :allday

      t.timestamps
    end
  end
end

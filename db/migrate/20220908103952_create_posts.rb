class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :post_date,        null: false
      t.references :user,            null: false, foreign_key: true
      t.string :start_time,            null: false
      t.string :area,                null: false
      t.text :content      

      t.timestamps
    end
  end
end

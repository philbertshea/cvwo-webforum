class CreateFposts < ActiveRecord::Migration[7.1]
  def change
    create_table :fposts do |t|
      t.string :post_title
      t.string :post_text
      t.datetime :post_datetime
      t.integer :post_user_id

      t.timestamps
    end
  end
end

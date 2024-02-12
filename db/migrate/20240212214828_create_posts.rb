class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :forum, null: false, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: "no title"
      t.text :content, null: false, default: "no content"
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

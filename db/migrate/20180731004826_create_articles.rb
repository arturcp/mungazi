class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :image_url, null: false
      t.string :short_title, null: false, limit: 25

      t.timestamps
    end
  end
end

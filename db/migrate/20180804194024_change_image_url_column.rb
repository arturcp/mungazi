class ChangeImageUrlColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :image_url, :image
  end
end

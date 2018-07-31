class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :subtitle
      t.string :description, limit: 475
      t.string :url, null: false
      t.datetime :date

      t.timestamps
    end
  end
end

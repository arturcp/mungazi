class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :content

      t.timestamp
    end
  end
end

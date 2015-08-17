class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url
      t.integer :user_id
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end

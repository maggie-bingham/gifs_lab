class AddColumns < ActiveRecord::Migration
  def change
    add_column :gifs, :vote_total, :integer, :default => 0
    add_column :users, :bio, :text
    add_column :users, :username, :string
    add_column :users, :profile_photo, :string
    add_column :votes, :value, :integer, :default => 0
  end
end

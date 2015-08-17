class Gif < ActiveRecord::Base

  belongs_to :user
  has_many :votes

  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings

  validates :gif, format: { with: /\.gif\z/, message: "File must be a gif, must end with .gif" }

end

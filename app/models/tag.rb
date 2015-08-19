class Tag < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :taggings
  has_many :gifs, :through => :taggings


end

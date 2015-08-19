class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gifs
  has_many :votes

  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings

  acts_as_voter

end

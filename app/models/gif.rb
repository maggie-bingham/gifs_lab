class Gif < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :votes

  has_many :taggings
  has_many :tags, :through => :taggings

  attachment  :file, content_type: "image/gif", extension: "gif"

  validates :url, format: { with: /\.gif\z/, message: "File must be a gif, must end with .gif" }, :allow_blank => true
  validates_uniqueness_of :url, :allow_blank => true

  def all_tags
    self.tags.map(&:name).join(" , ")
  end

end

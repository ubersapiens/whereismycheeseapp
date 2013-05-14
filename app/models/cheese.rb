class Cheese < ActiveRecord::Base
  attr_accessible :name, :origin_protected, :milk_type, :country, :texture,
    :image_url, :ratings, :users
  
  belongs_to :milk_type
  belongs_to :country
  belongs_to :texture
  
  has_many :ratings, :dependent => :destroy
  has_many :users, :through => :ratings
  
  def average_rating
    if self.ratings.empty?
      0
    else
      (self.ratings.sum {|r| r.star_rating } / self.ratings.count * 1.0).round(1)
    end
  end
end

class Rating < ActiveRecord::Base
  attr_accessible :is_favourite, :star_rating, :text_rating, :user, :cheese
  
  belongs_to :user
  belongs_to :cheese
end

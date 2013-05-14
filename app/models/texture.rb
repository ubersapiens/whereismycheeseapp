class Texture < ActiveRecord::Base
  attr_accessible :name, :cheeses
  
  has_many :cheeses
end

class Country < ActiveRecord::Base
  attr_accessible :description, :flag_url, :name, :cheeses
  
  has_many :cheeses
end

class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :alias, :avatar, :email, :first_name, :last_name,
    :password, :password_confirmation, :ratings, :cheeses
  
  has_many :ratings, :dependent => :destroy
  has_many :cheeses, :through => :ratings
  
  has_attached_file :avatar,
    :styles => {
      :medium => "480x360>",
      :thumb => "240x180>"
    },
    :default_url => "/images/:style/missing.png"

  validates :email, :first_name, :last_name, :presence => true
  
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :password, :password_confirmation, :confirmation => true
  
  def name
    [self.first_name, self.last_name].compact.join(' ')
  end
  
  private
  
  def downcase_email
    self.email.downcase!
  end
end

class Community < ActiveRecord::Base
  belongs_to :sport
  has_many :posts

  validates :name, presence: true
  validates :post_code, presence: true
  
  geocoded_by :post_code
  after_validation :geocode 
end

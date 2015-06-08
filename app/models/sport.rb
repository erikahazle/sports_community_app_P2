class Sport < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :outdoor, presence: true
  has_many :communities
  has_many :posts, through: :communities

end

class Post < ActiveRecord::Base
  belongs_to :community
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true
  validates :user_name, presence: true
end

class Post < ActiveRecord::Base
  belongs_to :community
  validates :title, presence: true
  validates :content, presence: true
end

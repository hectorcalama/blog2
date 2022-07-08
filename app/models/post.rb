class Post < ApplicationRecord
  has_many :messages
  belongs_to :blog
  belongs_to :user

  validates :content, :title, presence: true
end
  

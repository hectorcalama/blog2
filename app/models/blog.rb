class Blog < ApplicationRecord
    has_many :owners
    has_many :posts
    
    # todos los usuarios que son dueños de una blog específico
    has_many :users, through: :owners
    
    # todos los usuarios que han posteado en un blog específico
    has_many :user_posts, through: :posts, source: :user

    validates :name, :description, presence: true
end
    
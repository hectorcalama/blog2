class User < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    has_many :owners
    has_many :messages
    has_many :posts
    # todos los blogs pertenecientes por un usuario específico
    has_many :blogs, through: :owners

    # todos los blog en los que el usuario ha posteado
    has_many :blog_posts, through: :posts, source: :blog
    
    validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :first_name, :last_name, :email, presence: true
end
    
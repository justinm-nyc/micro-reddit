class User < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2 }
    validates :email, presence: true, length: { minimum: 6 }, uniqueness: true
    validates :username, presence: true, length: { minimum: 6 }, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }

    has_many :posts
    has_many :comments
end

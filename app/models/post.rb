class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 2 }
    validates :body, presence: true, length: { minimum: 2 }

    belongs_to :user
    has_many :comments, :dependent => :destroy
end

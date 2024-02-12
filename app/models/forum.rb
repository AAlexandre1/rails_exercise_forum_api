class Forum < ApplicationRecord
    has_many :posts

    validates :name, presence: true
    validates :description, presence: true
    validates :category, presence: true
end

class Hashtag < ApplicationRecord
    has_many :tags
    validates :name, presence: true
end
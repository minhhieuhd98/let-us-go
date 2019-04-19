class Place < ApplicationRecord
    has_one_attached :picture
    has_many :events
end

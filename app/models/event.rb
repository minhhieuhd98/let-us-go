class Event < ApplicationRecord
    has_many :attendances
    has_many :comments
    has_many :users, through: :attendances
    has_many_attached :pictures
    scope :by_hidden_status, -> {where hidden_status: false }
end

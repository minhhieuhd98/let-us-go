class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    scope :by_hidden_status, -> {where hidden_status: false }
end

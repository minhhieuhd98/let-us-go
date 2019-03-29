class Event < ApplicationRecord
    has_many :attendances
    has_many :comments
    has_many :users, through: :attendances
    has_many_attached :pictures
    scope :by_hidden_status, -> {where hidden_status: false }
    validates :start, presence: true, date: { after: Proc.new { Date.today + 3 }, message: "must be at least #{(Date.today + 4).strftime("%H:%M %Y/%m/%d").to_s}" }, on: :create
    validates :end, presence: true, date: { after:  :start}
end

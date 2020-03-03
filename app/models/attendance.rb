class Attendance < ApplicationRecord
  belongs_to :student
  belongs_to :meeting
  has_many :groups, through: :student
end

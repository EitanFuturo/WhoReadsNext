class Meeting < ApplicationRecord
  belongs_to :group
  has_many :students, through: :group
  has_many :teachers, through: :group
end

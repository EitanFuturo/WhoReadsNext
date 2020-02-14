class Meeting < ApplicationRecord
  belongs_to :group
  has_many :students, through: :group
  has_many :teachers, through: :group
  has_many :attendances
  has_many :meetings, through: :attendances

  def name
    "#{group.name} - #{date} - #{venue}"
  end

end

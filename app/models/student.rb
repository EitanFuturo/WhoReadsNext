class Student < ApplicationRecord
  has_and_belongs_to_many :groups
  has_many :attendances
  has_many :meetings, through: :attendances

  def group_name
    groups.order(:updated_at).last.try(:name) || 'Unknown'
  end
end

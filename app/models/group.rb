class Group < ApplicationRecord
  has_and_belongs_to_many :teachers, touch: true
  has_and_belongs_to_many :students

  def teacher_email
    teachers.order(:updated_at).last.try(:email) || 'Unknown'
  end
end

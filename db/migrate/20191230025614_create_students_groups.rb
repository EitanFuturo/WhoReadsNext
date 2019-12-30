class CreateStudentsGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :students_groups, id: false do |t|
      t.belongs_to :student
      t.belongs_to :group
    end
  end
end

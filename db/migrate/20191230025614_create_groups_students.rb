class CreateGroupsStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :groups_students, id: false do |t|
      t.belongs_to :student
      t.belongs_to :group
    end
  end
end

class CreateGroupsTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :groups_teachers, id: false do |t|
      t.belongs_to :teacher
      t.belongs_to :group
    end
  end
end

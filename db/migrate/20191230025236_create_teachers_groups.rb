class CreateTeachersGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers_groups, id: false do |t|
      t.belongs_to :teacher
      t.belongs_to :group
    end
  end
end

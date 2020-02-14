class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.references :student, null: false, foreign_key: true
      t.references :meeting, null: false, foreign_key: true
      t.boolean :attended
      t.boolean :had_text
      t.boolean :read_text

      t.timestamps
    end
  end
end

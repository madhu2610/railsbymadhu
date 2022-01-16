class CreateStudentProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :student_profiles do |t|
      t.integer :mark1
      t.integer :mark2
      t.integer :mark3
      t.integer :total
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end

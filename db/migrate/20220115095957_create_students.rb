class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :roll_no
      t.string :email
      t.string :address
      t.integer :mobile
      t.string :image

      t.timestamps
    end
  end
end

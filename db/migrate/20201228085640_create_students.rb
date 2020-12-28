class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.text :email_id
      t.text :address
      t.integer :contact_number
      t.integer :marks
      t.timestamps
    end
  end
end

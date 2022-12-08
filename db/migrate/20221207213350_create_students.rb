class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :company_id
      t.integer :role_id
      t.string :first_name
      t.string :last_name
      t.text :email
      t.integer :age
      t.string :gender
      t.string :country

      t.timestamps
    end
  end
end

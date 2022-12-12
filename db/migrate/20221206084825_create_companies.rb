class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      # t.integer :user_id
      t.integer :Comp_ID
      t.string :C_name
      t.integer :No_of_employees
      t.text :Address
      t.text :Dept_name
      t.integer :Phone_number

      t.timestamps
    end
  end
end

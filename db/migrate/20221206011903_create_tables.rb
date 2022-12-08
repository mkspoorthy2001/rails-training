class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.integer :Company_ID
      t.integer :Role_ID
      t.string :First_name
      t.string :Last_name
      t.text :Email
      t.integer :Age
      t.text :Gender
      t.string :Country

      t.timestamps
    end
  end
end

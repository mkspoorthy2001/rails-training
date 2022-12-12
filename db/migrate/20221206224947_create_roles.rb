class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      # t.integer :user_id
      t.integer :R_ID
      t.text :Project_name
      t.text :Role_name
      t.text :Role_code

      t.timestamps
    end
  end
end

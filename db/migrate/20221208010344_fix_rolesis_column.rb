class FixRolesisColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :tables, :Role_ID, :role_id 
  end
end

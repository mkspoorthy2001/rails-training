class FixRolesColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :roles, :R_ID, :r_id
    rename_column :roles, :Project_name, :project_name
    rename_column :roles, :Role_name, :role_name
    rename_column :roles, :Role_code, :role_code
  end
end

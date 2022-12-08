class FixCompanyTable < ActiveRecord::Migration[7.0]
  def change

     rename_column :companies, :C_name, :company_name
     rename_column :companies, :Comp_ID, :comp_id
     rename_column :companies, :No_of_employees, :no_of_employees
     rename_column :companies, :Address, :address
     rename_column :companies, :Dept_name, :dept_name
     rename_column :companies, :Phone_number, :phone_number
  end
end

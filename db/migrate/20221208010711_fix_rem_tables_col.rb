class FixRemTablesCol < ActiveRecord::Migration[7.0]
  def change

     rename_column :tables, :Company_ID, :company_id
     rename_column :tables, :Last_name, :last_name 
     rename_column :tables,:Email, :email 
     rename_column :tables, :Age, :age
     rename_column :tables, :Gender, :gender
     rename_column :tables, :Country, :country
  end
end

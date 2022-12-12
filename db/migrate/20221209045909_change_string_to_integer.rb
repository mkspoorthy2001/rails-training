class ChangeStringToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :tables, :user_id, :integer, using: "user_id::integer"
    # change_column :companies, :user_id, :integer, "using: user_id::integer"
  end
end

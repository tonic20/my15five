class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_reference :users, :company
  end
end
class AddRolToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rol, :integer, defaults: 0
  end
end

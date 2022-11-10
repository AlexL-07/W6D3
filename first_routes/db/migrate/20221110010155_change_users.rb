class ChangeUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email
    rename_column :users, :name, :username
    change_column :users, :username, :string, null: false, index: {unique: true}
  end
end

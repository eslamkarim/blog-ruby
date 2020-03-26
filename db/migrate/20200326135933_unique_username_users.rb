class UniqueUsernameUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :name, :string, unique: true
    change_column :posts, :title, :string, unique: true
  end
end

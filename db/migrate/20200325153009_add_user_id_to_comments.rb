class AddUserIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :users, foreign_key: true 
    add_reference :comments, :posts, foreign_key: true 
  end
end

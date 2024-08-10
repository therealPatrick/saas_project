class AddUserIdToBoards < ActiveRecord::Migration[7.1]
  def change
    add_column :boards, :user_id, :integer
    add_index :boards, :user_id 
  end
end

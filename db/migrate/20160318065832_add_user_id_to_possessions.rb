class AddUserIdToPossessions < ActiveRecord::Migration
  def change
    add_column :possessions, :user_id, :integer
  end
end

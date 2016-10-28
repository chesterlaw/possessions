class AddGotRidOfToPossessions < ActiveRecord::Migration
  def change
    add_column :possessions, :got_rid_of, :boolean
  end
end

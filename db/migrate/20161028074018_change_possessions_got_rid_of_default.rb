class ChangePossessionsGotRidOfDefault < ActiveRecord::Migration
  def change
    change_column_default :possessions, :got_rid_of, false
  end
end

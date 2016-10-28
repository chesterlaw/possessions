class AddCategoryIdToPossessions < ActiveRecord::Migration
  def change
    add_column :possessions, :category_id, :integer
  end
end

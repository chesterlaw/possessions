class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.timestamp :got_rid_of_at
      t.text :got_rid_of_reason

      t.timestamps null: false
    end
  end
end

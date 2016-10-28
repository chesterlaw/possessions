class ChangePossessionsAmazonLinkToString < ActiveRecord::Migration
  def change
    change_column :possessions, :amazon_link, :string
  end
end

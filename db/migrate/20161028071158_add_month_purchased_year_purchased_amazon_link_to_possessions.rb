class AddMonthPurchasedYearPurchasedAmazonLinkToPossessions < ActiveRecord::Migration
  def change
    add_column :possessions, :month_purchased, :integer
    add_column :possessions, :year_purchased, :integer
    add_column :possessions, :amazon_link, :integer
  end
end

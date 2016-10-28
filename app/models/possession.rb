class Possession < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  def month_purchased_shown
    if month_purchased
      Date::MONTHNAMES[month_purchased]
    else
      "Unknown"
    end
  end

  def year_purchased_shown
    if year_purchased
      year_purchased
    else
      "????"
    end
  end

  def category_name
    if category
      category.name
    else
      nil
    end
  end
end

class Toy < ActiveRecord::Base
  has_many :purchases
  has_many :kids, through: :purchases

  def self.most_expensive
    highest_price = maximum(:price)
    find_by(price: highest_price)
  end

  def self.most_popular
    most_purchases = all.map { |toy| toy.purchases.count }.max
    all.find { |toy| toy.purchases.count == most_purchases }
  end

  def kids_names
    kids.pluck(:name)
  end
end

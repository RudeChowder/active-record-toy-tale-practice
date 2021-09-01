class Kid < ActiveRecord::Base
  has_many :purchases
  has_many :toys, through: :purchases

  def make_purchase(toy, quantity)
    Purchase.create(toy:toy, kid: self, quantity: quantity)
  end

  def all_purchase_info
    purchases.map(&:info)
  end

  def throw_out(toy)
    purchase_to_update = purchases.find_by(toy: toy, kid: self)
    new_quantity = purchase_to_update.quantity - 1
    purchase_to_update.update(quantity: new_quantity)
  end

  def throw_all_out(toy)
    purchases.find_by(toy: toy, kid: self).destroy
  end
end

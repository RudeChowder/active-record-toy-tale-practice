class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :toy_id
      t.integer :kid_id
      t.integer :quantity
    end
  end
end

class AddOrderToProducts < ActiveRecord::Migration
  def change
    add_column :products, :order, :integer
  end
end

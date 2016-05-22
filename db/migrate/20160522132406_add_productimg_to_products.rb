class AddProductimgToProducts < ActiveRecord::Migration
  def change
    add_column :products, :productimg, :string
  end
end

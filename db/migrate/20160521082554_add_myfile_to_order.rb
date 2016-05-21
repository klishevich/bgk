class AddMyfileToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :myfile, :string
  end
end

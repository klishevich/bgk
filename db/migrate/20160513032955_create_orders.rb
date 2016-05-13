class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :fio
      t.string :position
      t.string :phone
      t.string :email
      t.string :org_inn
      t.string :org_name
      t.string :org_phone
      t.string :org_site
      t.string :interest
      t.string :supply_date
      t.string :supply_city
      t.string :supply_address
      t.text :comment

      t.timestamps null: false
    end
  end
end

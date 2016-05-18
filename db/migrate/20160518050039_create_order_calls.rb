class CreateOrderCalls < ActiveRecord::Migration
  def change
    create_table :order_calls do |t|
      t.string :name
      t.string :phone
      t.string :time
      t.text :question

      t.timestamps null: false
    end
  end
end

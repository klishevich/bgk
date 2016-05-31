class CreatePorderItems < ActiveRecord::Migration
  def change
    create_table :porder_items do |t|
      t.references :product, index: true, foreign_key: true
      t.references :porder, index: true, foreign_key: true
      t.integer :quantity
      t.string :details

      t.timestamps null: false
    end
  end
end

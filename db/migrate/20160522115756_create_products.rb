class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :subtitle
      t.boolean :prop1
      t.boolean :prop2
      t.boolean :prop3
      t.boolean :prop4
      t.boolean :prop5
      t.boolean :prop6
      t.text :desc_col1
      t.text :desc_col2
      t.text :desc_full

      t.timestamps null: false
    end
  end
end

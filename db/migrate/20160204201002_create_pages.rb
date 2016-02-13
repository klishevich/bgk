class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :keywords
      t.text :description
      t.string :url
      t.string :h1
      t.text :content
      t.string :menu_title
      t.integer :menu_order

      t.timestamps null: false
    end
  end
end

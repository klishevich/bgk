class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :keywords
      t.string :description
      t.string :url
      t.text :content

      t.timestamps null: false
    end
  end
end

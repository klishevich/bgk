class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.string :title
      t.string :keywords
      t.string :description

      t.timestamps null: false
    end
  end
end

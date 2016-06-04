class CreatePorders < ActiveRecord::Migration
  def change
    create_table :porders do |t|
      t.string :company_name
      t.string :person_name
      t.string :position
      t.string :phone
      t.string :email
      t.text :comment
      t.references :porder_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

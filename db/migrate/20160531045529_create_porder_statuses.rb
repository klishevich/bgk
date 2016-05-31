class CreatePorderStatuses < ActiveRecord::Migration
  def change
    create_table :porder_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

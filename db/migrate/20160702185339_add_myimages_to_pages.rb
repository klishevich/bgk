class AddMyimagesToPages < ActiveRecord::Migration
  def change
    add_column :pages, :pageimgs, :string, array: true, default: []
  end
end

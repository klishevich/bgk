class AddCodeToPages < ActiveRecord::Migration
  def change
    add_column :pages, :code, :string
  end
end

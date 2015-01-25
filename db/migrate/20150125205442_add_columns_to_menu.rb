class AddColumnsToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :name, :string
    add_column :menus, :description, :text
    add_column :menus, :cost, :float
  end
end

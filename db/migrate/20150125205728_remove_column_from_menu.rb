class RemoveColumnFromMenu < ActiveRecord::Migration
  def change
    remove_column :menus, :cost, :float
  end
end

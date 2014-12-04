class AddCompleteToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :complete, :boolean, default: false
  end
end

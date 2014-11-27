class AddCountToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :count, :integer
  end
end

class AddSecondaryToResiduaryDetails < ActiveRecord::Migration
  def change
    add_column :residuary_details, :secondary, :boolean, default: false
    add_column :residuary_details, :complete, :boolean, default: false
  end
end

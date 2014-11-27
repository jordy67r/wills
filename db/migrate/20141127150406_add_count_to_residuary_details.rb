class AddCountToResiduaryDetails < ActiveRecord::Migration
  def change
    add_column :residuary_details, :count, :integer
  end
end

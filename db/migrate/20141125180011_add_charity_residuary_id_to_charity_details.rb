class AddCharityResiduaryIdToCharityDetails < ActiveRecord::Migration
  def change
    add_column :charity_details, :charity_residuary_id, :integer
  end
end

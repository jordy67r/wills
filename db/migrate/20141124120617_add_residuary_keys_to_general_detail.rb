class AddResiduaryKeysToGeneralDetail < ActiveRecord::Migration
  def change
    add_column :general_details, :individual_residuary_id, :integer
    add_column :general_details, :charity_residuary_id, :integer
  end
end

class AddPropertyIdsToGeneralDetails < ActiveRecord::Migration
  def change
    add_column :general_details, :benificiary_id, :integer
    add_column :general_details, :replacement_benificiary_id, :integer
  end
end

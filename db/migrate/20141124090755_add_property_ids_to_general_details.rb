class AddPropertyIdsToGeneralDetails < ActiveRecord::Migration
  def change
    add_column :general_details, :benificiary_id, :integer
    add_column :general_details, :second_benificiary_id, :integer
    add_column :general_details, :third_benificiary_id, :integer
    add_column :general_details, :forth_benificiary_id, :integer
    add_column :general_details, :replacement_benificiary_id, :integer
    add_column :general_details, :second_replacement_benificiary_id, :integer
    add_column :general_details, :third_replacement_benificiary_id, :integer
    add_column :general_details, :forth_replacement_benificiary_id, :integer
  end
end

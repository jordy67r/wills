class AddGuardianIdsToGeneralDetails < ActiveRecord::Migration
  def change
    add_column :general_details, :first_guardian_id, :integer
    add_column :general_details, :second_guardian_id, :integer
    add_column :general_details, :third_guardian_id, :integer
    add_column :general_details, :forth_guardian_id, :integer
    add_column :general_details, :first_replacement_guardian_id, :integer
    add_column :general_details, :second_replacement_guardian_id, :integer
    add_column :general_details, :third_replacement_guardian_id, :integer
    add_column :general_details, :forth_replacement_guardian_id, :integer
  end
end

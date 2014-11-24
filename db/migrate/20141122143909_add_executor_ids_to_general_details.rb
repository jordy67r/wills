class AddExecutorIdsToGeneralDetails < ActiveRecord::Migration
  def change
    add_column :general_details, :first_executor_id, :integer
    add_column :general_details, :second_executor_id, :integer
    add_column :general_details, :third_executor_id, :integer
    add_column :general_details, :forth_executor_id, :integer
    add_column :general_details, :first_replacement_executor_id, :integer
    add_column :general_details, :second_replacement_executor_id, :integer
    add_column :general_details, :third_replacement_executor_id, :integer
    add_column :general_details, :forth_replacement_executor_id, :integer
  end
end

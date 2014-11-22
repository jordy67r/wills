class AddTestatorDetailIdToGeneralDetail < ActiveRecord::Migration
  def change
    add_reference :general_details, :testator_detail, index: true
  end
end

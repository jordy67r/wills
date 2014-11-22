class AddPartnerDetailIdToGeneralDetail < ActiveRecord::Migration
  def change
    add_reference :general_details, :partner_detail, index: true
  end
end

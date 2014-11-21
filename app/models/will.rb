class Will < ActiveRecord::Base
  has_one :testator_detail
  has_one :partner_detail
  has_one :funeral
  has_one :executor
  has_one :administration
  has_one :guardian
  has_one :residuary
  has_one :request
end

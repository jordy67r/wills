class Will < ActiveRecord::Base
  has_one :testator_detail
  has_one :partner_detail
  has_one :funeral
  has_one :executor
  has_one :administration
  has_one :guardian
  has_one :residuary
  has_one :request
  belongs_to :user

  has_one :testator_general_details, through: :testator_detail, source: :general_detail
  has_one :partner_general_details, through: :partner_detail, source: :general_detail
  has_one :first_executor, through: :executor, source: :first_executor_general_detail
  has_one :second_executor, through: :executor, source: :second_executor_general_detail
  has_one :third_executor, through: :executor, source: :third_executor_general_detail
  has_one :forth_executor, through: :executor, source: :forth_executor_general_detail
  has_one :first_replacement_executor, through: :executor, source: :first_replacement_executor_general_detail
  has_one :second_replacement_executor, through: :executor, source: :second_replacement_executor_general_detail
  has_one :third_replacement_executor, through: :executor, source: :third_replacement_executor_general_detail
  has_one :forth_replacement_executor, through: :executor, source: :forth_replacement_executor_general_detail
  
end

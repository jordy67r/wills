class GeneralDetail < ActiveRecord::Base

  belongs_to :will
  belongs_to :testator_detail
  belongs_to :partner_detail
  belongs_to :first_executor, class_name: 'Executor'
  belongs_to :second_executor, class_name: 'Executor'
  belongs_to :third_executor, class_name: 'Executor'
  belongs_to :forth_executor, class_name: 'Executor'
  belongs_to :first_replacement_executor, class_name: 'Executor'
  belongs_to :second_replacement_executor, class_name: 'Executor'
  belongs_to :third_replacement_executor, class_name: 'Executor'
  belongs_to :forth_replacement_executor, class_name: 'Executor'
  belongs_to :first_guardian, class_name: 'Guardian'
  belongs_to :second_guardian, class_name: 'Guardian'
  belongs_to :third_guardian, class_name: 'Guardian'
  belongs_to :forth_guardian, class_name: 'Guardian'
  belongs_to :first_replacement_guardian, class_name: 'Guardian'
  belongs_to :second_replacement_guardian, class_name: 'Guardian'
  belongs_to :third_replacement_guardian, class_name: 'Guardian'
  belongs_to :forth_replacement_guardian, class_name: 'Guardian'
  belongs_to :benificiary_general_details, class_name: 'Property'
  belongs_to :replacement_benificiary_general_details, class_name: 'Property'

  validates :first_name, presence: true, length: { maximum: 100 }
  validates :middle_name, length: { maximum: 200 }, allow_blank: true
  validates :surname, presence: true, length: { maximum: 100 }
  validates :postcode, presence: true, length: { maximum: 10 }
  validates :address_one, presence: true, length: { maximum: 100 }
  validates :address_two, length: { maximum: 100 }, allow_blank: true
  validates :city, presence: true, length: { maximum: 100 }
  validates :county, presence: true, length: { maximum: 100 }
  validates :country, presence: true, length: { maximum: 100 }

end

class Property < ActiveRecord::Base
  belongs_to :will

  has_many :benificiary_general_details, class_name: "GeneralDetail", foreign_key: "benificiary_id"
  has_many :replacement_benificiary_general_details, class_name: "GeneralDetail", foreign_key: "replacement_benificiary_id"

  validates :land_reg_number, length: { maximum: 20 }, allow_blank: true
  validates :postcode, presence: true, length: { maximum: 10 }
  validates :address_one, presence: true, length: { maximum: 100 }
  validates :address_two, length: { maximum: 100 }, allow_blank: true
  validates :city, presence: true, length: { maximum: 100 }
  validates :county, presence: true, length: { maximum: 100 }
  validates :country, presence: true, length: { maximum: 100 }
end

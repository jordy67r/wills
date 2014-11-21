class GeneralDetail < ActiveRecord::Base

  belongs_to :will

  validates :first_name, presence: true, length: { maximum: 100 }
  validates :middle_name, presence: true, length: { maximum: 200 }
  validates :surname, presence: true, length: { maximum: 100 }
  validates :postcode, presence: true, length: { maximum: 10 }
  validates :address_one, presence: true, length: { maximum: 100 }
  validates :address_two, presence: true, length: { maximum: 100 }
  validates :city, presence: true, length: { maximum: 100 }
  validates :county, presence: true, length: { maximum: 100 }
  validates :country, presence: true, length: { maximum: 100 }

end

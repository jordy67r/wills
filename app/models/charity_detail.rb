class CharityDetail < ActiveRecord::Base
  belongs_to :will
  validates :name, presence: true, length: { maximum: 200 }
  validates :registered_charity_number, presence: true, length: { maximum: 20 }
  validates :postcode, presence: true, length: { maximum: 10 }
  validates :address_one, presence: true, length: { maximum: 100 }
  validates :address_two, length: { maximum: 100 }, allow_blank: true
  validates :city, presence: true, length: { maximum: 100 }
  validates :county, presence: true, length: { maximum: 100 }
  validates :country, presence: true, length: { maximum: 100 }
end

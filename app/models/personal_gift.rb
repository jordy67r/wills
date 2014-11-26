class PersonalGift < ActiveRecord::Base
  belongs_to :will
  validates :first_name, presence: true, length: { maximum: 100 }
  validates :middle_name, length: { maximum: 200 }, allow_blank: true
  validates :surname, presence: true, length: { maximum: 100 }
  validates :postcode, presence: true, length: { maximum: 10 }
  validates :address_one, presence: true, length: { maximum: 100 }
  validates :address_two, length: { maximum: 100 }, allow_blank: true
  validates :city, presence: true, length: { maximum: 100 }
  validates :county, presence: true, length: { maximum: 100 }
  validates :country, presence: true, length: { maximum: 100 }
  validates :description, length: { maximum: 1000 }, allow_blank: true
end

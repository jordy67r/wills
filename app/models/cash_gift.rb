class CashGift < ActiveRecord::Base
  validates :amount, length: { maximum: 20 }
  belongs_to :will

  validates :first_name, presence: true, length: { maximum: 100 }, if: :no_children
  validates :middle_name, length: { maximum: 200 }, allow_blank: true, if: :no_children
  validates :surname, presence: true, length: { maximum: 100 }, if: :no_children
  validates :postcode, presence: true, length: { maximum: 10 }, if: :no_children
  validates :address_one, presence: true, length: { maximum: 100 }, if: :no_children
  validates :address_two, length: { maximum: 100 }, allow_blank: true, if: :no_children
  validates :city, presence: true, length: { maximum: 100 }, if: :no_children
  validates :county, presence: true, length: { maximum: 100 }, if: :no_children
  validates :country, presence: true, length: { maximum: 100 }, if: :no_children

  def no_children
    true if self.shared_to == "no"
  end
  
end

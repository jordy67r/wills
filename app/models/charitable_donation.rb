class CharitableDonation < ActiveRecord::Base
  belongs_to :will

    validates :amount, presence: true

    validates :name, presence: true, length: { maximum: 200 }, unless: "popular_charity"
    validates :registered_charity_number, presence: true, length: { maximum: 20 }, unless: "popular_charity"
    validates :postcode, presence: true, length: { maximum: 10 }, unless: "popular_charity"
    validates :address_one, presence: true, length: { maximum: 100 }, unless: "popular_charity"
    validates :address_two, length: { maximum: 100 }, allow_blank: true, unless: "popular_charity"
    validates :city, presence: true, length: { maximum: 100 }, unless: "popular_charity"
    validates :county, presence: true, length: { maximum: 100 }, unless: "popular_charity"
    validates :country, presence: true, length: { maximum: 100 }, unless: "popular_charity"

  def full_address
    self.address_one {+ ", " + self.address_two if address_two} + ", " + self.city + ", " + self.county + ", " + self.postcode + ", " + self.country
  end

end

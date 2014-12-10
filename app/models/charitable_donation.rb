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

    validates :instruction, length: { maximum: 2000 }, allow_blank: true

  def full_name
    self.first_name.titleize {+ " " + self.middle_name.titleize if middle_name} + " " + self.surname.titleize
  end

  def full_address
    self.address_one.titleize {+ ", " + self.address_two.titleize if address_two} + ", " + self.city.titleize + ", " + self.county.titleize + ", " + self.postcode.upcase + ", " + self.country.titleize
  end

end

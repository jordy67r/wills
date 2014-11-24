class CashGift < ActiveRecord::Base
  validates :amount, length: { maximum: 20 }
  belongs_to :will
end

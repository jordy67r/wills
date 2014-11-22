class CashGift < ActiveRecord::Base
  validates :amount, length: { maximum: 20 }
end

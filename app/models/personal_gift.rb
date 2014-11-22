class PersonalGift < ActiveRecord::Base
  validates :description, length: { maximum: 1000 }, allow_blank: true
end

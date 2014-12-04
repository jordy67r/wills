class Funeral < ActiveRecord::Base
  validates :preference, presence: true
  validates :wishes, length: { maximum: 2000 }, allow_blank: true
  validates :specific_organs, length: { maximum: 2000 }, allow_blank: true

end

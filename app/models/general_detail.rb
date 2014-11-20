class GeneralDetail < ActiveRecord::Base

  belongs_to :will

  validates :first_name, presence: true, length: { maximum: 100 }

end

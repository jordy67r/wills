class TestatorDetail < ActiveRecord::Base
  belongs_to :will

  has_one :general_detail
  accepts_nested_attributes_for :general_detail
  
  validates :dob, presence: true

end

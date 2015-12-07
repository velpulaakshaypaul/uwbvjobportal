class Applicant < ActiveRecord::Base
  has_many :applications, dependent: :destroy
  validates :first_name, :presence => true

end

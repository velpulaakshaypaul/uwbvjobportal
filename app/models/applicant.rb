class Applicant < ActiveRecord::Base
  has_many :applications, dependent: :destroy
end

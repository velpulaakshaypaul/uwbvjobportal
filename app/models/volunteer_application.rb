class VolunteerApplication < ActiveRecord::Base
  belongs_to :Applicant
  belongs_to :Application

end

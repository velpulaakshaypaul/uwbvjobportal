class Application < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :job
  has_one :internship_application
end

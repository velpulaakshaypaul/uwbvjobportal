class AddApplicantToVolunteerApplication < ActiveRecord::Migration
  def change
    add_reference :volunteer_applications, :Applicant, index: true, foreign_key: true
  end
end

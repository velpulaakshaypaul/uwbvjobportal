class AddReferenceToVolunteerApplication < ActiveRecord::Migration
  def change
    add_reference :volunteer_applications, :Reference, index: true, foreign_key: true
  end
end

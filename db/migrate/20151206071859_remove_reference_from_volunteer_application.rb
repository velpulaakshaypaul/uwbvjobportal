class RemoveReferenceFromVolunteerApplication < ActiveRecord::Migration
  def change
    remove_reference :volunteer_applications, :Reference, index: true, foreign_key: true
  end
end

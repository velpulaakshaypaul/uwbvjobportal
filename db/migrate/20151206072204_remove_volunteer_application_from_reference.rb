class RemoveVolunteerApplicationFromReference < ActiveRecord::Migration
  def change
    remove_reference :references, :volunteer_application, index: true, foreign_key: true
  end
end

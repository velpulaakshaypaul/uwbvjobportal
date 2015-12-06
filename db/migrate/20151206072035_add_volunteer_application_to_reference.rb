class AddVolunteerApplicationToReference < ActiveRecord::Migration
  def change
    add_reference :references, :volunteer_application, index: true, foreign_key: true
  end
end

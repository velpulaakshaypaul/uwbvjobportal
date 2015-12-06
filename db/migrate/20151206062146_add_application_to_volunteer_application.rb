class AddApplicationToVolunteerApplication < ActiveRecord::Migration
  def change
    add_reference :volunteer_applications, :Application, index: true, foreign_key: true
  end
end

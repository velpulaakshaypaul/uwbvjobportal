class AddJobToVolunteerApplication < ActiveRecord::Migration
  def change
    add_reference :volunteer_applications, :Job, index: true, foreign_key: true
  end
end

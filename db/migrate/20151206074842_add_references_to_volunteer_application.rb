class AddReferencesToVolunteerApplication < ActiveRecord::Migration
  def change
    add_column :volunteer_applications, :references, :text
  end
end

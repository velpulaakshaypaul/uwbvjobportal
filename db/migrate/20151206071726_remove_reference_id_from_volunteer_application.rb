class RemoveReferenceIdFromVolunteerApplication < ActiveRecord::Migration
  def change
    remove_column :volunteer_applications, :reference_id, :integer
  end
end

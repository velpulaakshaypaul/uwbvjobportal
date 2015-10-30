class AddApplicationIdToInternshipApplication < ActiveRecord::Migration
  def change
    add_column :internship_applications, :application_id, :integer
  end
end

class AddAnswer4ToInternshipApplication < ActiveRecord::Migration
  def change
    add_column :internship_applications, :answer4, :text
  end
end

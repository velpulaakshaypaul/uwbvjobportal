class AddAnswer3ToInternshipApplication < ActiveRecord::Migration
  def change
    add_column :internship_applications, :answer3, :text
  end
end

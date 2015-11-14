class AddAnswer1ToInternshipApplication < ActiveRecord::Migration
  def change
    add_column :internship_applications, :answer1, :text
  end
end

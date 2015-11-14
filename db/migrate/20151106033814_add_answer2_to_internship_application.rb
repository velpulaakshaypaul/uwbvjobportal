class AddAnswer2ToInternshipApplication < ActiveRecord::Migration
  def change
    add_column :internship_applications, :answer2, :text
  end
end

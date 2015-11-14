class RemoveAnswersListFromInternshipApplication < ActiveRecord::Migration
  def change
    remove_column :internship_applications, :answers_list, :string
  end
end

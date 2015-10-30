class CreateInternshipApplications < ActiveRecord::Migration
  def change
    create_table :internship_applications do |t|
      t.integer :job_id
      t.integer :applicant_id
      t.string :answers_list

      t.timestamps null: false
    end
  end
end

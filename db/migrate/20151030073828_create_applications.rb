class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :job_id
      t.integer :applicant_id
      t.string :status

      t.timestamps null: false
    end
  end
end

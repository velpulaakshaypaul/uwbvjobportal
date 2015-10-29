class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :job_id
      t.string :integer
      t.string :user_id
      t.string :integer
      t.string :internship_id
      t.string :integer
      t.string :paidemployment_id
      t.string :integer
      t.string :volunteer_id
      t.string :integer

      t.timestamps null: false
    end
  end
end

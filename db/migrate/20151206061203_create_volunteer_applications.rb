class CreateVolunteerApplications < ActiveRecord::Migration
  def change
    create_table :volunteer_applications do |t|
      t.string :jobtitle
      t.string :employername
      t.text :employeraddress
      t.string :employerphone
      t.string :employerfax
      t.integer :hoursavailable
      t.text :a1
      t.text :a2
      t.text :a3

      t.timestamps null: false
    end
  end
end

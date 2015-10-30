class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :employer
      t.string :supervisor
      t.string :supervisor_phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :start_salary
      t.integer :end_salary
      t.date :start_date
      t.date :end_date
      t.string :position
      t.text :duties
      t.text :reason_leaving
      t.integer :applicant_id

      t.timestamps null: false
    end
  end
end

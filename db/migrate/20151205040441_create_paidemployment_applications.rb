class CreatePaidemploymentApplications < ActiveRecord::Migration
  def change
    create_table :paidemployment_applications do |t|
      t.integer :applicant_id
      t.integer :job_id
      t.integer :application_id
      t.text :referral_source
      t.text :preferred_contact
      t.date :availability_date
      t.integer :desired_salary
      t.boolean :transportation
      t.boolean :over_eighteen
      t.boolean :work_proof
      t.boolean :controlledsubstance_test
      t.text :a1
      t.text :a2
      t.text :a3
      t.text :a4
      t.text :a5
      t.text :a6
      t.text :a7
      t.text :a8

      t.timestamps null: false
    end
  end
end

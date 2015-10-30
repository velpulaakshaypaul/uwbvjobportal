class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact
      t.decimal :gpa
      t.integer :credit_hours
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end

class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school_name
      t.string :string
      t.string :address
      t.string :years_attended
      t.boolean :graduated
      t.string :degree_received
      t.integer :applicant_id

      t.timestamps null: false
    end
  end
end

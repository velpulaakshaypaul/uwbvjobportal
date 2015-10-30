class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :occupation
      t.string :years_known
      t.integer :applicant_id

      t.timestamps null: false
    end
  end
end

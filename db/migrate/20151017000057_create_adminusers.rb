class CreateAdminusers < ActiveRecord::Migration
  def change
    create_table :adminusers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :contact
      t.string :password
      t.string :passwordconfirmation

      t.timestamps null: false
    end
  end
end

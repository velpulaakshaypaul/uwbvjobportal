class AddPaidemploymentApplicationToExperience < ActiveRecord::Migration
  def change
    add_reference :experiences, :PaidemploymentApplication, index: true, foreign_key: true
  end
end

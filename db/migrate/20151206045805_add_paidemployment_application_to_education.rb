class AddPaidemploymentApplicationToEducation < ActiveRecord::Migration
  def change
    add_reference :educations, :PaidemploymentApplication, index: true, foreign_key: true
  end
end

class AddPaidemploymentApplicationToReference < ActiveRecord::Migration
  def change
    add_reference :references, :PaidemploymentApplication, index: true, foreign_key: true
  end
end

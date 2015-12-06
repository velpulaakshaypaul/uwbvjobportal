class RemovePaidemploymentApplicationFromReference < ActiveRecord::Migration
  def change
    remove_reference :references, :paidemployment_application, index: true, foreign_key: true
  end
end

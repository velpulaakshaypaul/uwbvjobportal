class AddReferencesToPaidemploymentApplication < ActiveRecord::Migration
  def change
    add_column :paidemployment_applications, :references, :text
  end
end

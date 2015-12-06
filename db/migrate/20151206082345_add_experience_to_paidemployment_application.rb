class AddExperienceToPaidemploymentApplication < ActiveRecord::Migration
  def change
    add_column :paidemployment_applications, :experience, :text
  end
end

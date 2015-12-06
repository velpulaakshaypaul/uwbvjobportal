class AddEducationToPaidemploymentApplication < ActiveRecord::Migration
  def change
    add_column :paidemployment_applications, :education, :text
  end
end

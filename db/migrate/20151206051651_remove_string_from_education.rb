class RemoveStringFromEducation < ActiveRecord::Migration
  def change
    remove_column :educations, :string, :string
  end
end

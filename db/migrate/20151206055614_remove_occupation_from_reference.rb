class RemoveOccupationFromReference < ActiveRecord::Migration
  def change
    remove_column :references, :occupation, :string
  end
end

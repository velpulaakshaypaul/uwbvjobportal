class RemoveEmailFromReference < ActiveRecord::Migration
  def change
    remove_column :references, :email, :string
  end
end

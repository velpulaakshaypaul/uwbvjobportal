class AddRef3occupationToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref3occupation, :string
  end
end

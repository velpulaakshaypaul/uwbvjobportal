class AddRef2emailToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref2email, :string
  end
end

class AddRef2nameToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref2name, :string
  end
end

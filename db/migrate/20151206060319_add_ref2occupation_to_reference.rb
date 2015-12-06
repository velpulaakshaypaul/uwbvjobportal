class AddRef2occupationToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref2occupation, :string
  end
end

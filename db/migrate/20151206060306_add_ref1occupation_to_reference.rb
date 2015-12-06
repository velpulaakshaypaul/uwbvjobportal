class AddRef1occupationToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref1occupation, :string
  end
end

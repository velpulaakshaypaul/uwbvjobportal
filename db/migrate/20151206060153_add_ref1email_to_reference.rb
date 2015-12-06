class AddRef1emailToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref1email, :string
  end
end

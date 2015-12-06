class AddRef1yearsknownToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref1yearsknown, :string
  end
end

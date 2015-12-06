class AddRef2yearsknownToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref2yearsknown, :string
  end
end

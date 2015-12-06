class AddRef3yearsknownToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref3yearsknown, :string
  end
end

class AddRef3emailToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref3email, :string
  end
end

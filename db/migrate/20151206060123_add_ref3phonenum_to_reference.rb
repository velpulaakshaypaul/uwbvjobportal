class AddRef3phonenumToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref3phonenum, :string
  end
end

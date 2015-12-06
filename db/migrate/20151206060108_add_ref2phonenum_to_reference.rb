class AddRef2phonenumToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref2phonenum, :string
  end
end

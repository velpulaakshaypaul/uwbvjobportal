class AddRef1phonenumToReference < ActiveRecord::Migration
  def change
    add_column :references, :ref1phonenum, :string
  end
end

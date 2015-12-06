class DropEducations < ActiveRecord::Migration
  def change
    drop_table :educations
  end
end

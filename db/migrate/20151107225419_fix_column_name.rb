class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :questions, :questions_list, :question
  end
end

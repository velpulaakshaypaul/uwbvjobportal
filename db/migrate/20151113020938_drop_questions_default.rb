class DropQuestionsDefault < ActiveRecord::Migration
  def change
    drop_table :questions_defaults
  end
end

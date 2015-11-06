class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :questions_list
      t.string :job_type

      t.timestamps null: false
    end
  end
end

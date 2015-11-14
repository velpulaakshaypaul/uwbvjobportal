class CreateQuestionsDefaults < ActiveRecord::Migration
  def change
    create_table :questions_defaults do |t|
      t.text :question
      t.string :job_type
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end

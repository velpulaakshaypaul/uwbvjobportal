class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :questions
      t.string :text
      t.string :applicationtype
      t.string :string
      t.string :resume
      t.string :boolean
      t.string :cover_letter
      t.string :boolean
      t.string :work_samples
      t.string :boolean

      t.timestamps null: false
    end
  end
end

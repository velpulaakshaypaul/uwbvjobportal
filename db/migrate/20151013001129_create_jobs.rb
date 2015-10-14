class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :qualifications
      t.date :postedon
      t.date :deadline

      t.timestamps null: false
    end
  end
end

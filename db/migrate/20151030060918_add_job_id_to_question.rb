class AddJobIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :job_id, :integer
  end
end

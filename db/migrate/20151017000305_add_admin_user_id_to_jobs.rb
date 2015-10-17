class AddAdminUserIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :adminuser_id, :integer
  end
end

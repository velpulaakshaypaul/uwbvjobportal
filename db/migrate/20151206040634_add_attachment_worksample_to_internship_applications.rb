class AddAttachmentWorksampleToInternshipApplications < ActiveRecord::Migration
  def self.up
    change_table :internship_applications do |t|
      t.attachment :worksample
    end
  end

  def self.down
    remove_attachment :internship_applications, :worksample
  end
end

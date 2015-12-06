class AddAttachmentResumeToPaidemploymentApplications < ActiveRecord::Migration
  def self.up
    change_table :paidemployment_applications do |t|
      t.attachment :resume
    end
  end

  def self.down
    remove_attachment :paidemployment_applications, :resume
  end
end

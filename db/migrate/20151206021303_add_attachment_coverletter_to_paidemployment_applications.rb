class AddAttachmentCoverletterToPaidemploymentApplications < ActiveRecord::Migration
  def self.up
    change_table :paidemployment_applications do |t|
      t.attachment :coverletter
    end
  end

  def self.down
    remove_attachment :paidemployment_applications, :coverletter
  end
end

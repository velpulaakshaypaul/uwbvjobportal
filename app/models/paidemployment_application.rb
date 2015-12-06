class PaidemploymentApplication < ActiveRecord::Base
  
  has_attached_file :coverletter,
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment :coverletter, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
    has_attached_file :resume,
   :storage => :dropbox,
   :dropbox_credentials => Rails.root.join("config/dropbox.yml")
    validates_attachment :resume, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

end

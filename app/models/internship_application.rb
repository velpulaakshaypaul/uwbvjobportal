class InternshipApplication < ActiveRecord::Base
  belongs_to :application

  has_attached_file :worksample,
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment :worksample, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end

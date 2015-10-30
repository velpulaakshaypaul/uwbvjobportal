class Job < ActiveRecord::Base
   belongs_to :adminuser
   has_many :questions, dependent: :destroy
end

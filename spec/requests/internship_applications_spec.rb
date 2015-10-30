require 'rails_helper'

RSpec.describe "InternshipApplications", type: :request do
  describe "GET /internship_applications" do
    it "works! (now write some real specs)" do
      get internship_applications_path
      expect(response).to have_http_status(200)
    end
  end
end

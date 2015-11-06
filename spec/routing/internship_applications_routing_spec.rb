require "rails_helper"

RSpec.describe InternshipApplicationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/internship_applications").to route_to("internship_applications#index")
    end

    it "routes to #new" do
      expect(:get => "/internship_applications/new").to route_to("internship_applications#new")
    end

    it "routes to #show" do
      expect(:get => "/internship_applications/1").to route_to("internship_applications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/internship_applications/1/edit").to route_to("internship_applications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/internship_applications").to route_to("internship_applications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/internship_applications/1").to route_to("internship_applications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/internship_applications/1").to route_to("internship_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/internship_applications/1").to route_to("internship_applications#destroy", :id => "1")
    end

  end
end

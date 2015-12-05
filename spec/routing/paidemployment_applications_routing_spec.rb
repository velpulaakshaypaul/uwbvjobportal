require "rails_helper"

RSpec.describe PaidemploymentApplicationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/paidemployment_applications").to route_to("paidemployment_applications#index")
    end

    it "routes to #new" do
      expect(:get => "/paidemployment_applications/new").to route_to("paidemployment_applications#new")
    end

    it "routes to #show" do
      expect(:get => "/paidemployment_applications/1").to route_to("paidemployment_applications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/paidemployment_applications/1/edit").to route_to("paidemployment_applications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/paidemployment_applications").to route_to("paidemployment_applications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/paidemployment_applications/1").to route_to("paidemployment_applications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/paidemployment_applications/1").to route_to("paidemployment_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/paidemployment_applications/1").to route_to("paidemployment_applications#destroy", :id => "1")
    end

  end
end

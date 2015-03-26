require "rails_helper"

RSpec.describe ProctorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/proctors").to route_to("proctors#index")
    end

    it "routes to #new" do
      expect(:get => "/proctors/new").to route_to("proctors#new")
    end

    it "routes to #show" do
      expect(:get => "/proctors/1").to route_to("proctors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/proctors/1/edit").to route_to("proctors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/proctors").to route_to("proctors#create")
    end

    it "routes to #update" do
      expect(:put => "/proctors/1").to route_to("proctors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/proctors/1").to route_to("proctors#destroy", :id => "1")
    end

  end
end

require 'spec_helper'

RSpec.describe "Proctors", :type => :request do
  describe "GET /proctors" do
    it "works! (now write some real specs)" do
      get proctors_path
      expect(response).to have_http_status(200)
    end
  end
end

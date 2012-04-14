require 'spec_helper'

describe DashboardController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'plan'" do
    it "returns http success" do
      get 'plan'
      response.should be_success
    end
  end

  describe "GET 'check'" do
    it "returns http success" do
      get 'check'
      response.should be_success
    end
  end

end

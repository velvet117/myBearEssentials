require 'spec_helper'

describe SessionController do

  before(:each) do
    OmniAuth.config.test_mode = true
  end

  describe "authenticate user with facebook" do
    context "for the first time" do
      before(:each) do
        OmniAuth.config.add_mock(:facebook, {:uid => '12345', :email => "stubAddr@emailProvider.com"})
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
        post :create, :provider => :facebook
      end
      it "should set a current user" do
        session[:user_id].should_not be_nil
      end
      it "should flash a signed in message" do
        flash[:notice].should == "Successfully authorized from your Facebook account"
      end
      it "should redirect to the welcome page" do
        response.should redirect_to planners_path
      end
    end

    context "for a returning user" do
      before(:each) do
        OmniAuth.config.add_mock(:facebook, {:uid => '12345', :email => "stubAddr@emailProvider.com"})
        User.create!(:email => "stubAddr@emailProvider.com")
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
        post :create, :provider => :facebook
      end
      it "should set a current user" do
        session[:user_id].should_not be_nil
      end
      it "should flash a signed in message" do
        flash[:notice].should == "Successfully authorized from your Facebook account"
      end
      it "should redirect to the welcome page" do
        response.should redirect_to planners_path
      end
    end

    context "and failing" do
      before(:each) do
        OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
        post :failure
      end
      it "should not have a current user" do
        session[:user_id].should be_nil
      end
      it "should flash a failure message" do
        flash[:error].should == "Sorry, but you didn't allow access to our app!"
      end
      it "should redirect to the welcome page" do
        response.should redirect_to root_path
      end
    end

    context "and signing out" do
      before(:each) do
        OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
        session[:user_id] = '0'
        post :destroy
      end
      it "should unset a current user" do
        session[:user_id].should be_nil
      end
      it "should flash a failure message" do
        flash[:notice].should == "Signed out."
      end
      it "should redirect to the welcome page" do
        response.should redirect_to root_path
      end
    end
  end
end

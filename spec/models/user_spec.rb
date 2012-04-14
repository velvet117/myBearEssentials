require 'spec_helper'

describe User do

  describe "specs for if self storage of password and modification is utilized" do
    describe "verify_user_pass" do
      it "should properly return true if the given username, password pair are legitimate and are in the system" do
      end
      it "should return false if the given username does not exist in the database" do
      end
      it "should return false if the given password does not match the given username" do
      end
    end

    describe "change_user_pass" do
      it "should take a valid given username and update the password (hashed for now) in the database accordingly to the params and return true" do
      end
      it "should return false if given an invalid username and should NOT make any changes to the database" do
      end
    end
  end

  describe "omniauth for third party authentication" do
    it "should return the User model object corresponding to the username if the omniauth authentication was successful" do
    end
    it "should return nil if the omniauth authentication was a failure" do
    end
  end

  describe "self-reflect on user type" do
    it "Called on a User that is an admin, should return 'admin'" do
    end
    it "Called on a User that is a student, should return 'student'" do
    end
    it "Called on anything not defined as a User type yet (i.e. currently NOT admin or student), should return nil" do
    end
  end

  describe "test creation of User" do
    it "should in the database have the proper attributes with which it was created" do
    end
  end

end

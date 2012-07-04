require 'spec_helper'

describe StaticPageController do

  describe "GET '/'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

end

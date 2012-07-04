require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the instance name" do
      visit '/'
      page.should have_selector('h1', :text => I18n.t('static_page.home.welcome', :instance => Settings.instance_name))
    end
    
    it "should have the welcome title" do
      visit '/'
      page.should have_selector('title', :text => "#{I18n.t('static_page.home.title')} - #{Settings.instance_name}")
    end
  end
end

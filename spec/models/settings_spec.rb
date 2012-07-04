require 'spec_helper'

describe Settings do
  it "should default to nil for unknown settings" do
    Settings.invalid_settings.should be_nil
  end
  
  it "should allow settings to be set" do
    Settings.hash_setting = {:test => "passed"}
    Settings.str_setting = "Testing."
    
    Settings.hash_setting.should_not be_nil
    Settings.str_setting.should_not be_nil
  end
end

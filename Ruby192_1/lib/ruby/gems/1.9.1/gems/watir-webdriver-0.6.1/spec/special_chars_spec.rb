require File.expand_path('watirspec/spec_helper', File.dirname(__FILE__))

describe Watir::Browser do

  before do
    browser.goto WatirSpec.url_for("special_chars.html", :needs_server => true)
  end

  it "finds elements with single quotes" do
    browser.div(:text => "single 'quotes'").should exist
  end

end

# feature tests for Tables

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..') unless $SETUP_LOADED
require 'unittests/setup'

class TC_Nbsp_Xpath < Test::Unit::TestCase
  
  def setup
    goto_page "xpath_nbsp.html"
  end
  
  def test_nbsp
  	div = browser.element(:xpath,"//div")
  	assert(div.innerText, "Hello world")
  end
end
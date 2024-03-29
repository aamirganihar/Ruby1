# feature tests for IE#send_keys

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..') unless $SETUP_LOADED
require 'unittests/setup'

class TC_SendKeys < Test::Unit::TestCase
  def setup
    goto_page "textfields1.html"
  end
  
  def test_tabbing
    browser.text_field(:name, 'text1').focus
    browser.send_keys('{tab}')
    browser.send_keys('Scooby')
    assert('Scooby', browser.text_field(:name, 'beforetest').value)
  end
  
  def test_enter
    browser.text_field(:name, 'text1').focus
    browser.send_keys('{tab}{tab}{tab}{tab}{tab}')
    browser.send_keys('Dooby{enter}')
    sleep 0.2
    assert(browser.text.include?('PASS'))
  end
  
end

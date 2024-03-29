$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..') unless $SETUP_LOADED
require 'unittests/setup'

class TC_No_Wait_Commands < Test::Unit::TestCase
  def test_fire_event_no_wait
    goto_page "javascriptevents.html"
    browser.text_field(:index, 0).fire_event_no_wait("onkeyup")
    assert_nothing_raised{
      Watir::Wait.until {browser.div(:id, 'event_name').text == 'onkeyup'}
    }
  end

  def test_set_no_wait_text_field
    goto_page "textfields1.html"
    browser.text_field(:name, "text1").set_no_wait("watir IE Controller")
    assert_nothing_raised{
      Watir::Wait.until {browser.text_field(:name, "text1").value == "watir IE Controller"}
    }
  end

  def test_select_no_wait_text_select_list
    goto_page "selectboxes1.html"
    browser.select_list(:name,'sel1').select_no_wait(/Option 1/)
    assert_nothing_raised{
      Watir::Wait.until {browser.select_list(:name , 'sel1').selected_options.first.text == 'Option 1'}
    }
  end
end

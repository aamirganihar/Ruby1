# feature tests for TextArea Fields

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..') unless $SETUP_LOADED
require 'unittests/setup'

class TC_FileField_XPath < Test::Unit::TestCase
  include Watir
  
  def setup
    goto_page "fileupload.html"
  end
  
  def test_file_field_Exists
    #test for existance of 4 file area
    assert(browser.file_field(:xpath, "//input[@name='file1']/").exists?)
    assert(browser.file_field(:xpath, "//input[@id='file2']/").exists?)
    #test for missing 
    assert_false(browser.file_field(:xpath, "//input[@name='missing']/").exists?)   
    assert_false(browser.file_field(:xpath, "//input[@name='totallybogus']/").exists?)
    #pop one open and put something in it.
    file = $htmlRoot + "fileupload.html"
    file.gsub! 'file:///', ''
    file.gsub! '/', '\\'
    browser.file_field(:xpath, "//input[@name='file1']/").set(file)
    #click the upload button
    browser.button(:xpath, "//input[@name='upload']/").click
    
    assert(browser.text.include?("PASS"))	
  end
  
  def test_iterator
    assert_equal(6, browser.file_fields.length)
  end
  
end

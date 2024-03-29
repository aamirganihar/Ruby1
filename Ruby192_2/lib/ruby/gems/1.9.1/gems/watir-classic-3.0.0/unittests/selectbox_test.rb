# feature tests for Select Boxes

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..') unless $SETUP_LOADED
require 'unittests/setup'

class TC_SelectList < Test::Unit::TestCase
  include Watir::Exception
  
  def setup
    goto_page "selectboxes1.html"
  end
  
  def test_exists
    assert(browser.select_list(:name, "sel1").exists?)   
    assert_false(browser.select_list(:name, "missing").exists?)   
    assert_false(browser.select_list(:id, "missing").exists?)   
  end
  
  def test_enabled
    assert(browser.select_list(:name, "sel1").enabled?)   
    assert_raises(UnknownObjectException) { browser.select_list(:name, "NoName").enabled? }  
    assert_false(browser.select_list(:id, 'selectbox_4').enabled?)
  end
  
  def test_class_name
    assert_raises(UnknownObjectException) { browser.select_list(:name, "missing").class_name }  
    assert_equal("list_style", browser.select_list(:name, "sel1").class_name)   
    assert_equal("", browser.select_list(:name, "sel2").class_name)
  end

  def test_select_by_text
    assert_equal('Option 3', browser.select_list(:name, "sel1").selected_options.first.text)
    browser.select_list(:name, "sel1").select('Option 2')
    assert_equal('Option 2', browser.select_list(:name, "sel1").selected_options.first.text)
  end
  
  def test_select_by_value
    browser.select_list(:name, "sel3").select_value(/2/)
    assert(browser.text.include?("PASS"))
  end
  
  # Option
  
  def test_Option_text_select
    assert_raises(UnknownObjectException) { browser.select_list(:name, "sel1").option(:text, "missing item").select }  
    assert_raises(UnknownObjectException) { browser.select_list(:name, "sel1").option(:text, /missing/).select }  
    assert_raises(MissingWayOfFindingObjectException) { browser.select_list(:name, "sel1").option(:missing, "Option 1").select }
    
    browser.select_list(:name, "sel1").option(:text, "Option 1").select
    assert_equal("Option 1", browser.select_list(:name, "sel1").selected_options.first.text)
  end    

  def test_clear_selection
    assert_raises(TypeError) { browser.select_list(:name, "sel1").clear }
    assert_nothing_thrown    { browser.select_list(:name, "sel2").clear }
  end

  def xtest_option_class_name
    # the option object doesnt inherit from element, so this doesnt work
    assert_raises(UnknownObjectException) { browser.select_list(:name, "sel1").option(:text, "missing item").class_name }  
    assert_equal("list_style", browser.select_list(:name, "sel2").option(:value, 'o2').class_name)   
    assert_equal("", browser.select_list(:name, "sel2").option(:value, 'o1').class_name)   
  end

  # SelectList#includes?
    
  tag_method :test_includes, :fails_on_firefox
  def test_includes
    assert browser.select_list(:name, 'sel1').include?('Option 1')
    assert browser.select_list(:name, 'sel1').include?(/option/i)
    assert ! browser.select_list(:name, 'sel1').include?('Option 6')
    assert ! browser.select_list(:name, 'sel1').include?(/foobar/)
  end  
  
  # SelectList#selected?
  
  tag_method :test_selected, :fails_on_firefox
  def test_selected
    assert browser.select_list(:name, 'sel1').selected?('Option 3')
    assert browser.select_list(:name, 'sel1').selected?(/option/i)
    assert ! browser.select_list(:name, 'sel1').selected?('Option 1')
    assert ! browser.select_list(:name, 'sel1').selected?(/option 1/i)
  end
  
  tag_method :test_selected_not_found, :fails_on_firefox
  def test_selected_not_found
    selectbox = browser.select_list(:name, 'sel1')
    assert_raises(UnknownObjectException) {selectbox.selected?("option doesn't exist")}
    assert_raises(UnknownObjectException) {selectbox.selected?(/option doesn't exist/)}
  end

    
  def test_properties
    assert_raises(UnknownObjectException) { browser.select_list(:index, 199).value }  
    assert_raises(UnknownObjectException) { browser.select_list(:index, 199).name }  
    assert_raises(UnknownObjectException) { browser.select_list(:index, 199).id }  
    assert_raises(UnknownObjectException) { browser.select_list(:index, 199).disabled? }  
    assert_raises(UnknownObjectException) { browser.select_list(:index, 199).type }  
    
    assert_equal("o3"   ,    browser.select_list(:index, 0).value)  
    assert_equal("sel1" ,    browser.select_list(:index, 0).name)  
    assert_equal(""     ,    browser.select_list(:index, 0).id)  
    assert_equal("select-one",         browser.select_list(:index, 0).type)  
    assert_equal("select-multiple",    browser.select_list(:index, 1).type)  
    
    browser.select_list(:index,0).select(/1/)
    assert_equal("o1", browser.select_list(:index, 0).value)  
    
    assert_false( browser.select_list(:index, 0).disabled?)
    assert(browser.select_list(:index, 3).disabled?)
    assert(browser.select_list(:id, 'selectbox_4').disabled?)
  end
  
  def test_iterator
    assert_equal(4, browser.select_lists.length)
    assert_equal("o3"   ,    browser.select_lists[0].value)  
    assert_equal("sel1" ,    browser.select_lists[0].name )  
    assert_equal("select-one",         browser.select_lists[0].type )  
    assert_equal("select-multiple" ,   browser.select_lists[1].type )  
    
    index = 0
    browser.select_lists.each do |l|
      assert_equal( browser.select_list(:index, index).name, l.name)
      assert_equal( browser.select_list(:index, index).id, l.id)
      assert_equal( browser.select_list(:index, index).type, l.type)
      assert_equal( browser.select_list(:index, index).value, l.value)
      index += 1
    end
    assert_equal(index, browser.select_lists.length)
  end
end

class TC_Select_Options < Test::Unit::TestCase
  
  def setup
    goto_page "select_tealeaf.html"
  end
  
  def test_options_text
    browser.select_list(:name, 'op_numhits').option(:text, '>=').select
    assert(browser.select_list(:name, 'op_numhits').option(:text, '>=').selected?)
  end
end


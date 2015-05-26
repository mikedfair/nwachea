require 'test_helper'

class ParentTest < ActiveSupport::TestCase
  
  def setup
    @parent = Parent.new(firstname: "Testy", lastname: "Testerson", phone: "4791231233")
  end
  
  test "Parent Should Be Valid" do
    assert @parent.valid?
  end
  
  test "First Name Should Be Present" do
    @parent.firstname = " "
    assert_not @parent.valid?
  end
  
  test "Last Name Should Be Present" do
    @parent.lastname = " "
    assert_not @parent.valid?
  end
  
  test "Phone Should Be Present" do
    @parent.phone = " "
    assert_not @parent.valid?
  end
  
end
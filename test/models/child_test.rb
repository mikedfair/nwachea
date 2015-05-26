require 'test_helper'

class ChildTest < ActiveSupport::TestCase
  
  def setup
    @child = Child.new(firstname: "Testy", lastname: "Testerson", age: "10", grade: "3", gender: "male")
  end
  
  test "Child Should Be Valid" do
    assert @child.valid?
  end
  
  test "First Name Should Be Present" do
    @child.firstname = " "
    assert_not @child.valid?
  end
  
  test "Age Should Be Present" do
    @child.age = " "
    assert_not @child.valid?
  end
    
  test "Grade Should Be Present" do
    @child.grade = " "
    assert_not @child.valid?
  end
  
  test "Gender Should Be Present" do
    @child.gender = " "
    assert_not @child.valid?
  end
  
end
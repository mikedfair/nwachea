require 'test_helper'

class FamilyTest < ActiveSupport::TestCase
  
  def setup
    @family = Family.new(familyname: "Testerson", email: "test@email.com")
  end
  
  test "Family Name Should Be Valid" do
    assert @family.valid?
  end
  
  test "Family Name Should Be Present" do
    @family.familyname = " "
    assert_not @family.valid?
  end
  
  test "Email Should Be Present" do
    @family.email = " "
    assert_not @family.valid?
  end
  
  test "Email should be within bounds" do
    @family.email = "a" * 100 + "@example.com"
    assert_not @family.valid?
  end
  
  test "Email should be unique" do
    dup_parent  = @family.dup
    dup_parent.email = @family.email.upcase
    @family.save
    assert_not dup_parent.valid?
  end
  
  test "Email validation should accept valid addresses" do
    valid_addresses = %w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eee.au laura+joe@monk.cm]
    valid_addresses.each do |va|
      @family.email = va
      assert @family.valid?, '#{va.inspect} should be valid'
    end
  end
  
  test "Email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_eee.org user.name@example. eee@i_am_.com foo@ee+aar.com] 
    invalid_addresses.each do |ia|
      @family.email = ia
      assert_not @family.valid?, '#{va.inspect} should be valid'
    end
  end
end
require 'test_helper'

class UserTest < ActiveSupport::TestCase
 def setup
   @user=User.new(name: "First Second" , email: "user@example.com", password:"helloo", password_confirmation:"helloo", admission_no:"15CS109")
 end
  test "should be valid" do
     assert @user.valid?
  end
  test "name should be present" do
    @user.name=""
    assert_not @user.valid?
  end
  test "email should be present" do
    @user.email=""
    assert_not @user.valid?
  end
  test "email validation should accept valid addresses" do
    valid_addresses = %w[usr@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  test "admission no should be present" do
   assert @user.valid?
  end
end

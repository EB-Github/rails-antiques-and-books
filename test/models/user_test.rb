require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(name: "Eli Brown", email: "ebrown6@uab.edu")
  end
  
  test "base case" do
     assert @user.valid?
  end
  
  test "name is blank" do
      @user.name = " "
      assert_not @user.valid?
  end
  
  test "email is blank" do
      @user.email = " "
      assert_not @user.valid?
  end
end

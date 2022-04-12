require "test_helper"

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @inactive_user  = users(:inactive)
    @activated_user = users(:archer)
  end

  test "should redirect when user not activated" do
    get user_path(@inactive_user)
    assert_response      FILL_IN
    assert_redirected_to FILL_IN
  end

  test "should display user when activated" do
    get user_path(@activated_user)
    assert_response FILL_IN
    assert_template FILL_IN
  end
end

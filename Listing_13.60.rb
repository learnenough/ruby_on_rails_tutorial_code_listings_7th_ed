require "test_helper"

class MicropostsInterface < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
    log_in_as(@user)
  end
end
.
.
.
class MicropostSidebarTest < MicropostsInterface

  test "should display the right micropost count" do
    get root_path
    assert_match "#{FILL_IN} microposts", response.body
  end

  test "should user proper pluralization for zero microposts" do
    log_in_as(users(:malory))
    get root_path
    assert_match "0 microposts", response.body
  end

  test "should user proper pluralization for one micropost" do
    log_in_as(users(:lana))
    get root_path
    assert_match FILL_IN, response.body
  end
end

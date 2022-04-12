require "test_helper"
.
.
.
class LogoutTest < Logout
  .
  .
  .
  test "should still work after logout in second window" do
    delete logout_path
    assert_redirected_to root_url
  end
end

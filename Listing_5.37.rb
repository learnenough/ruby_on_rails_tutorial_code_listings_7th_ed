require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal FILL_IN, full_title
    assert_equal FILL_IN, full_title("Help")
  end
end

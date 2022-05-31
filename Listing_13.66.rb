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
class ImageUploadTest < MicropostsInterface

  test "should have a file input field for images" do
    get root_path
    assert_select 'input[type=FILL_IN]'
  end

  test "should be able to attach an image" do
    cont = "This micropost really ties the room together."
    img  = fixture_file_upload('kitten.jpg', 'image/jpeg')
    post microposts_path, params: { micropost: { content: cont, image: img } }
    assert FILL_IN.image.attached?
  end
end

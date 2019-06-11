require 'test_helper'

class FilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get files_index_url
    assert_response :success
  end

  test "should get show" do
    get files_show_url
    assert_response :success
  end

  test "should get destroy" do
    get files_destroy_url
    assert_response :success
  end

end

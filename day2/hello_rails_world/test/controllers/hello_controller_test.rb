require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hello_url
    assert_response :success
  end

  test "should get all days" do
    get hello_url
    items = assigns(:items)

    assert_includes(items, 'monday')
    assert_equal(7, items.count)
  end

  test "should filter days" do
    get hello_url(q: 'mon')
    items = assigns(:items)

    assert_equal(1, items.count)
  end
end

require "application_system_test_case"

class DemosTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit hello_url

    %w[sunday monday tuesday wednesday thursday friday saturday].each do |day|
      assert_selector('li', text: day)
    end
  end

  test "day filtering works" do
    visit hello_path(q: 'mon')
    assert_selector('li', text: 'monday')

    %w[sunday tuesday wednesday thursday friday saturday].each do |day|
      assert_no_selector('li', text: day)
    end
  end
end

require "application_system_test_case"

class DemosTest < ApplicationSystemTestCase

  teardown do
    Dir.glob(Rails.configuration.files_base.join("*")).each do |entry|
      continue unless File.file?(entry)
      File.unlink(entry)
    end
  end

  test "visiting the index" do
    visit hello_url
    click_on

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

  test "index shows all the files in the target directory" do
    create_files_in_test_storage('f1.txt', 'f2.txt')

    visit files_index_url

    assert_selector('li', text: 'f1.txt')
    assert_selector('li', text: 'f2.txt')
  end

  test "delete deletes a file" do
    create_files_in_test_storage('f1.txt', 'f2.txt')

    visit files_index_url

    # find(:xpath, '/html/body/ul/li[1]/a[2]').click
    destroy_link = find("a[href=\"#{files_destroy_path(filename: 'f1.txt')}\"")
    destroy_link.click
    accept_alert
    fname = 'f1.txt'
    assert_no_selector('li', text: 'f1.txt')
    refute(File.file?(Rails.configuration.files_base.join(fname)))
  end

  def create_files_in_test_storage(*files)
    files.each do |file|
      fname = Rails.configuration.files_base.join(file)
      f = File.open(fname, 'w')
      f.close
    end
  end

end

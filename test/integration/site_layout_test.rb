require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
  get root_path
  assert_template 'static_pages/home'
  assert_select "a[href=?]", root_path, count: 2##home に2つurl埋め込んであるため
  assert_select "a[href=?]", help_path
  assert_select "a[href=?]", about_path
  assert_select "a[href=?]", contact_path
  get contact_path
  assert_select "title",full_title("Contact")
  # test "the truth" do
  #   assert true
  # end
  end
end

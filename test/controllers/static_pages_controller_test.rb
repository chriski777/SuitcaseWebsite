require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "The Suitcase Clinic"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get join_us" do
    get join_us_path
    assert_response :success
    assert_select "title", "Join Us | #{@base_title}"
  end

  test "should get services" do
    get services_path
    assert_response :success
    assert_select "title", "Services | #{@base_title}"
  end

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end

  test "should get blogs" do
    get blogs_path
    assert_response :success
  end

  test "should get donate" do
    get donate_path
    assert_response :success
    assert_select "title", "Donate | #{@base_title}"
  end

  test "should get beth_el" do
    get beth_el_path
    assert_response :success
    assert_select "title", "Beth_El | #{@base_title}"
  end

  test "should get general" do
    get general_path
    assert_response :success
    assert_select "title", "General | #{@base_title}"
  end

  test "should get youth" do
    get youth_path
    assert_response :success
    assert_select "title", "Youth | #{@base_title}"
  end

  test "should get women" do
    get women_path
    assert_response :success
    assert_select "title", "Women | #{@base_title}"
  end

end

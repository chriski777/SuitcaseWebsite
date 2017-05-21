require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "The Suitcase Clinic"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get join_us" do
    get static_pages_join_us_url
    assert_response :success
    assert_select "title", "Join Us | #{@base_title}"
  end

  test "should get services" do
    get static_pages_services_url
    assert_response :success
    assert_select "title", "Services | #{@base_title}"
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end

  test "should get blogs" do
    get static_pages_blogs_url
    assert_response :success
  end

  test "should get donate" do
    get static_pages_donate_url
    assert_response :success
    assert_select "title", "Donate | #{@base_title}"
  end

  test "should get beth_el" do
    get static_pages_beth_el_url
    assert_response :success
    assert_select "title", "Beth_El | #{@base_title}"
  end

  test "should get general" do
    get static_pages_general_url
    assert_response :success
    assert_select "title", "General | #{@base_title}"
  end

  test "should get youth" do
    get static_pages_youth_url
    assert_response :success
    assert_select "title", "Youth | #{@base_title}"
  end

  test "should get women" do
    get static_pages_women_url
    assert_response :success
    assert_select "title", "Women | #{@base_title}"
  end

end

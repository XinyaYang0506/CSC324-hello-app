require 'test_helper'
require 'rails-controller-testing'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Moral sampling for COVID-19"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get stories" do
    get stories_path
    assert_response :success
  end

  test "result in stories should not be nil" do
    get stories_path
    assert_not_nil(assigns(@story_number), "@result should not be nil" )
  end
end

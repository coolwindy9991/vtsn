require 'test_helper'

class QuestionnairesControllerTest < ActionController::TestCase
  test "should get creat" do
    get :creat
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end

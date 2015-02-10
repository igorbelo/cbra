require 'test_helper'

module Frontend
  class EmailSignupsControllerTest < ActionController::TestCase
    setup do
      @email_signup = email_signups(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:email_signups)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create email_signup" do
      assert_difference('EmailSignup.count') do
        post :create, email_signup: {  }
      end

      assert_redirected_to email_signup_path(assigns(:email_signup))
    end

    test "should show email_signup" do
      get :show, id: @email_signup
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @email_signup
      assert_response :success
    end

    test "should update email_signup" do
      patch :update, id: @email_signup, email_signup: {  }
      assert_redirected_to email_signup_path(assigns(:email_signup))
    end

    test "should destroy email_signup" do
      assert_difference('EmailSignup.count', -1) do
        delete :destroy, id: @email_signup
      end

      assert_redirected_to email_signups_path
    end
  end
end

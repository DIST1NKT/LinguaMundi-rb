require 'test_helper'

class SpokenLanguagesControllerTest < ActionController::TestCase
  setup do
    @spoken_language = spoken_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spoken_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spoken_language" do
    assert_difference('SpokenLanguage.count') do
      post :create, spoken_language: { flag: @spoken_language.flag, name: @spoken_language.name }
    end

    assert_redirected_to spoken_language_path(assigns(:spoken_language))
  end

  test "should show spoken_language" do
    get :show, id: @spoken_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spoken_language
    assert_response :success
  end

  test "should update spoken_language" do
    put :update, id: @spoken_language, spoken_language: { flag: @spoken_language.flag, name: @spoken_language.name }
    assert_redirected_to spoken_language_path(assigns(:spoken_language))
  end

  test "should destroy spoken_language" do
    assert_difference('SpokenLanguage.count', -1) do
      delete :destroy, id: @spoken_language
    end

    assert_redirected_to spoken_languages_path
  end
end

require 'test_helper'

class LanguageSectionsControllerTest < ActionController::TestCase
  setup do
    @language_section = language_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:language_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language_section" do
    assert_difference('LanguageSection.count') do
      post :create, language_section: { info: @language_section.info, lang_id: @language_section.lang_id, section: @language_section.section }
    end

    assert_redirected_to language_section_path(assigns(:language_section))
  end

  test "should show language_section" do
    get :show, id: @language_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language_section
    assert_response :success
  end

  test "should update language_section" do
    patch :update, id: @language_section, language_section: { info: @language_section.info, lang_id: @language_section.lang_id, section: @language_section.section }
    assert_redirected_to language_section_path(assigns(:language_section))
  end

  test "should destroy language_section" do
    assert_difference('LanguageSection.count', -1) do
      delete :destroy, id: @language_section
    end

    assert_redirected_to language_sections_path
  end
end

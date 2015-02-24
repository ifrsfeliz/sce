require 'test_helper'

class ScholarshipTypesControllerTest < ActionController::TestCase
  setup do
    @scholarship_type = scholarship_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scholarship_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scholarship_type" do
    assert_difference('ScholarshipType.count') do
      post :create, scholarship_type: { nome: @scholarship_type.nome }
    end

    assert_redirected_to scholarship_type_path(assigns(:scholarship_type))
  end

  test "should show scholarship_type" do
    get :show, id: @scholarship_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scholarship_type
    assert_response :success
  end

  test "should update scholarship_type" do
    patch :update, id: @scholarship_type, scholarship_type: { nome: @scholarship_type.nome }
    assert_redirected_to scholarship_type_path(assigns(:scholarship_type))
  end

  test "should destroy scholarship_type" do
    assert_difference('ScholarshipType.count', -1) do
      delete :destroy, id: @scholarship_type
    end

    assert_redirected_to scholarship_types_path
  end
end

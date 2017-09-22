require 'test_helper'

class NandeyanensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nandeyanen = nandeyanens(:one)
  end

  test "should get index" do
    get nandeyanens_url
    assert_response :success
  end

  test "should get new" do
    get new_nandeyanen_url
    assert_response :success
  end

  test "should create nandeyanen" do
    assert_difference('Nandeyanen.count') do
      post nandeyanens_url, params: { nandeyanen: { message: @nandeyanen.message, title: @nandeyanen.title } }
    end

    assert_redirected_to nandeyanen_url(Nandeyanen.last)
  end

  test "should show nandeyanen" do
    get nandeyanen_url(@nandeyanen)
    assert_response :success
  end

  test "should get edit" do
    get edit_nandeyanen_url(@nandeyanen)
    assert_response :success
  end

  test "should update nandeyanen" do
    patch nandeyanen_url(@nandeyanen), params: { nandeyanen: { message: @nandeyanen.message, title: @nandeyanen.title } }
    assert_redirected_to nandeyanen_url(@nandeyanen)
  end

  test "should destroy nandeyanen" do
    assert_difference('Nandeyanen.count', -1) do
      delete nandeyanen_url(@nandeyanen)
    end

    assert_redirected_to nandeyanens_url
  end
end

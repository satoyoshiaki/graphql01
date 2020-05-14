require 'test_helper'

class SatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sato = satos(:one)
  end

  test "should get index" do
    get satos_url
    assert_response :success
  end

  test "should get new" do
    get new_sato_url
    assert_response :success
  end

  test "should create sato" do
    assert_difference('Sato.count') do
      post satos_url, params: { sato: { context: @sato.context, title: @sato.title } }
    end

    assert_redirected_to sato_url(Sato.last)
  end

  test "should show sato" do
    get sato_url(@sato)
    assert_response :success
  end

  test "should get edit" do
    get edit_sato_url(@sato)
    assert_response :success
  end

  test "should update sato" do
    patch sato_url(@sato), params: { sato: { context: @sato.context, title: @sato.title } }
    assert_redirected_to sato_url(@sato)
  end

  test "should destroy sato" do
    assert_difference('Sato.count', -1) do
      delete sato_url(@sato)
    end

    assert_redirected_to satos_url
  end
end

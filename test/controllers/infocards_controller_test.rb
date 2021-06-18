require "test_helper"

class InfocardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infocard = infocards(:one)
  end

  test "should get index" do
    get infocards_url, as: :json
    assert_response :success
  end

  test "should create infocard" do
    assert_difference('Infocard.count') do
      post infocards_url, params: { infocard: { content: @infocard.content, image_url: @infocard.image_url, summary: @infocard.summary, text: @infocard.text, title: @infocard.title } }, as: :json
    end

    assert_response 201
  end

  test "should show infocard" do
    get infocard_url(@infocard), as: :json
    assert_response :success
  end

  test "should update infocard" do
    patch infocard_url(@infocard), params: { infocard: { content: @infocard.content, image_url: @infocard.image_url, summary: @infocard.summary, text: @infocard.text, title: @infocard.title } }, as: :json
    assert_response 200
  end

  test "should destroy infocard" do
    assert_difference('Infocard.count', -1) do
      delete infocard_url(@infocard), as: :json
    end

    assert_response 204
  end
end

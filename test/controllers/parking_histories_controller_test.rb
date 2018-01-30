require 'test_helper'

class ParkingHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_history = parking_histories(:one)
  end

  test "should get index" do
    get parking_histories_url, as: :json
    assert_response :success
  end

  test "should create parking_history" do
    assert_difference('ParkingHistory.count') do
      post parking_histories_url, params: { parking_history: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show parking_history" do
    get parking_history_url(@parking_history), as: :json
    assert_response :success
  end

  test "should update parking_history" do
    patch parking_history_url(@parking_history), params: { parking_history: {  } }, as: :json
    assert_response 200
  end

  test "should destroy parking_history" do
    assert_difference('ParkingHistory.count', -1) do
      delete parking_history_url(@parking_history), as: :json
    end

    assert_response 204
  end
end

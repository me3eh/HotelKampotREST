require "test_helper"

class Api::V1::ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_reservation = api_v1_reservations(:one)
  end

  test "should get index" do
    get api_v1_reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_reservation_url
    assert_response :success
  end

  test "should create api_v1_reservation" do
    assert_difference("Api::V1::Reservation.count") do
      post api_v1_reservations_url, params: { api_v1_reservation: {  } }
    end

    assert_redirected_to api_v1_reservation_url(Api::V1::Reservation.last)
  end

  test "should show api_v1_reservation" do
    get api_v1_reservation_url(@api_v1_reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_reservation_url(@api_v1_reservation)
    assert_response :success
  end

  test "should update api_v1_reservation" do
    patch api_v1_reservation_url(@api_v1_reservation), params: { api_v1_reservation: {  } }
    assert_redirected_to api_v1_reservation_url(@api_v1_reservation)
  end

  test "should destroy api_v1_reservation" do
    assert_difference("Api::V1::Reservation.count", -1) do
      delete api_v1_reservation_url(@api_v1_reservation)
    end

    assert_redirected_to api_v1_reservations_url
  end
end

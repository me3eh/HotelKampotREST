require "application_system_test_case"

class Api::V1::ReservationsTest < ApplicationSystemTestCase
  setup do
    @api_v1_reservation = api_v1_reservations(:one)
  end

  test "visiting the index" do
    visit api_v1_reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "should create reservation" do
    visit api_v1_reservations_url
    click_on "New reservation"

    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "should update Reservation" do
    visit api_v1_reservation_url(@api_v1_reservation)
    click_on "Edit this reservation", match: :first

    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation" do
    visit api_v1_reservation_url(@api_v1_reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "Reservation was successfully destroyed"
  end
end

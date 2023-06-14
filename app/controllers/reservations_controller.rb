class ReservationsController < ApplicationController
#   before_action :log_action
#
#   def log_action
#     logger.info "Invoke action: #{params[:action]} in controller #{params[:controller]}.\n Here is skeleton"
#     logger.warn AsciiArt::Skeleton.new.call
#   end
#
  def index
#     open_reservations = Reservation.where(uuid: nil)
#     return render json: { message: "There are no reservations left" }, status: :bad_request if open_reservations.empty?
#
#     render json: open_reservations.map { |res| res.attributes }
    render json: { haha: "asdf" }
  end
#
#   def create
#     reservation = Reservation.find_by(id: params[:id])
#     return render json: { message: "There is no reservation with such id" }, status: :bad_request if reservation.nil?
#     return render json: { message: "This reservation was already booked" }, status: :bad_request if reservation.uuid.present?
#
#     uuid = SecureRandom.uuid
#     reservation.update(uuid: uuid)
#     filename = "#{uuid}.pdf"
#
#     ::Prawn::Document.generate("tmp/#{filename}") do
#       text "Hello there",
#            size: 36, align: :center, leading: 2
#       text "Room number: #{reservation.id}"
#       text "From: #{reservation.from}"
#       text "To: #{reservation.to}"
#       text "REMEMBER - your reservation name: #{reservation.uuid}"
#     end
#
#     file_data = Base64.encode64(File.binread("tmp/#{filename}"))
#     render json: { pdf: file_data, pdf_name: filename }
#   end
#
#   def show
#     reservation = Reservation.find_by(id: params[:id])
#     return render json: { message: "There is no reservation with such uuid" }, status: :bad_request if reservation.nil?
#
#     reservation_hash =
#       {
#         id: reservation.id,
#         room_number: reservation.room_number,
#         from: reservation.from,
#         to: reservation.to,
#         link_to: "http://#{request.host_with_port}#{reservation_path(reservation.id)}"
#       }
#     render json: { value: reservation_hash }
#   end
#
#   def show_with_uuid
#     reservation = Reservation.find_by(uuid: params[:uuid])
#
#     return render json: { message: "There is no reservation with such uuid" }, status: :bad_request if reservation.nil?
#
#     reservation_hash =
#       {
#         id: reservation.id,
#         room_number: reservation.room_number,
#         from: reservation.from,
#         to: reservation.to,
#         link_to: "#{request.protocol}#{request.host_with_port}#{reservation_path(reservation.id)}"
#       }
#     render json: { value: reservation_hash }
#   end
end

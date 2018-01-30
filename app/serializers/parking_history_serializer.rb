class ParkingHistorySerializer < ActiveModel::Serializer
  attributes :id, :address, :date, :duration, :paid_price
end

class ParkingHistorySerializer < ActiveModel::Serializer
  attributes :id, :address, :date, :duration, :paidPrice
end

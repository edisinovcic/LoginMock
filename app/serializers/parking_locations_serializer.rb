class ParkingLocationsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :latitude, :longitude
end

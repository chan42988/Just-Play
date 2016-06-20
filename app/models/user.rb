class User < ActiveRecord::Base

	attr_accessor :ip_address, :lat, :lon
	has_secure_password
	has_many :locations

	geocoded_by :ip_address,
   :latitude => :lat, :longitude => :lon
	after_validation :geocode

end

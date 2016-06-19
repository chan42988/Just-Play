class User < ActiveRecord::Base

	has_secure_password
	has_many :locations

	geocoded_by :ip_address,
  :latitude => :lat, :longitude => :lon
	after_validation :geocode

end

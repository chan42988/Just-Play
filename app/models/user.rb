class User < ActiveRecord::Base

	has_secure_password
	has_many :locations

	geocoded_by :ip_address
	after_validation :geocode, :if => :address_changed?

end


	
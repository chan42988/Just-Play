class User < ActiveRecord::Base

	has_secure_password
	has_one :ip_address
	has_many :locations
	has_many :matches

	# def first_ip
	# 	first_ip_address = ip_addresses.first
	# 	first_ip_address ? first_ip_address.ip : nil
	# end

	attr_accessor :ip_address
	
	geocoded_by :ip_address,
  	:latitude => :lat, :longitude => :lon #this is also fields in the db
	after_validation :geocode

end


	
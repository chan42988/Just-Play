class User < ActiveRecord::Base

	has_secure_password
	has_one :ip_addresses
	has_many :locations

	# def first_ip
	# 	first_ip_address = ip_addresses.first
	# 	first_ip_address ? first_ip_address.ip : nil
	# end
	# geocoded_by :ip_address
	# after_validation :geocode

end


	
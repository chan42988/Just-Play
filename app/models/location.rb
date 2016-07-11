class Location < ActiveRecord::Base

	belongs_to :user
	has_many :matches

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end
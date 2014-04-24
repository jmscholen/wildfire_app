class Location < ActiveRecord::Base
	has_many :wild_fires

	mount_uploader :map, MapUploader

end

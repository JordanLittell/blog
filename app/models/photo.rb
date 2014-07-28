class Photo < ActiveRecord::Base
	attr_accessor :file_data
	require 'carrierwave/orm/activerecord'
	mount_uploader :file_data, PhotoUploader
	

end

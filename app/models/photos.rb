class Photos < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'
	mount_uploader :binary, PhotoUploader
end

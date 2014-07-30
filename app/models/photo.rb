class Photo < ActiveRecord::Base
	attr_accessor :file_data
	require 'carrierwave/orm/activerecord'
	mount_uploader :file_data, PhotoUploader
	validates :file_data, presence: true
	validates :title, presence: true
end

class Article < ActiveRecord::Base
	validates :title, presence: true,length: {minimum: 5}
	validates :text, presence: true, length: {minimum: 5}
	validates :section_name, presence: true
	belongs_to :section
end

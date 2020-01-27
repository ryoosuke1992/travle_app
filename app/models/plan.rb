class Plan < ApplicationRecord
	belongs_to :user
	mount_uploader :img, ImgUploader
	validates :title, presence: true
	validates :date, presence: true
	validates :place, presence: true
	validates :meeting_place, presence: true
	validates :meeting_time, presence: true
	validates :content, presence: true
end

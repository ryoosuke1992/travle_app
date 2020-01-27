class Plan < ApplicationRecord
	belongs_to :user
	mount_uploader :img, ImgUploader
	validates :title, :date, :place, :meeting_place, :meeting_time, :content, presence: true
end

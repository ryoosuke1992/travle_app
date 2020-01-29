class Plan < ApplicationRecord
	mount_uploader :image, ImagesUploader
	validates :title, :image, :date, :place, :meeting_place, :meeting_time, :content, presence: true
	belongs_to :user
end

class NailArt < ApplicationRecord
	belongs_to :user
	mount_uploader :nailpic, NailpicUploader
end

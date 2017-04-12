class Photo < ApplicationRecord
    belongs_to :user
    belongs_to :place
    
    mount_uploader :photo_url, PictureUploader
end

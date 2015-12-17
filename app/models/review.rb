class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :wisata
  mount_uploader :foto, FotoUploader
end

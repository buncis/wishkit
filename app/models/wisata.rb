class Wisata < ActiveRecord::Base
  belongs_to :daerah
  belongs_to :kategori
  has_many :reviews
  mount_uploader :foto, FotoUploader
end

class Wisata < ActiveRecord::Base
  belongs_to :daerah
  belongs_to :kategori
  has_many :reviews
end

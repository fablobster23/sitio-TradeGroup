class Noticia < ActiveRecord::Base
  belongs_to :categoria
  mount_uploader :imagen, ImagenUploader
end

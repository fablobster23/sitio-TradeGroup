class Producto < ActiveRecord::Base
 mount_uploader :imagen, ImagenUploader
end
